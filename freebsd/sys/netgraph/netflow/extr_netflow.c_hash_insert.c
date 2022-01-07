
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int rti_flags; int rti_addrs; TYPE_2__ sin_addr; struct sockaddr** rti_info; scalar_t__ sin_family; TYPE_1__* rti_ifp; } ;
struct sockaddr_dl {int sdl_len; scalar_t__ sdl_family; } ;
struct sockaddr {int dummy; } ;
struct rt_addrinfo {int sin_len; int rti_flags; int rti_addrs; TYPE_2__ sin_addr; struct sockaddr** rti_info; scalar_t__ sin_family; TYPE_1__* rti_ifp; } ;
struct flow_rec {int fib; } ;
struct flow_hash_entry {int head; int mtx; } ;
struct TYPE_12__ {TYPE_2__ r_src; TYPE_2__ r_dst; } ;
struct TYPE_10__ {int bytes; int packets; int tcp_flags; int dst_mask; int src_mask; TYPE_7__ r; TYPE_2__ next_hop; int fle_o_ifx; int last; int first; int version; } ;
struct flow_entry {TYPE_3__ f; } ;
typedef int sin ;
typedef int rt_gateway ;
typedef TYPE_4__* priv_p ;
typedef int info ;
struct TYPE_11__ {int nfinfo_alloc_failed; int zone; } ;
struct TYPE_8__ {int if_index; } ;


 scalar_t__ AF_INET ;
 int ENOMEM ;
 int IPVERSION ;
 int MA_OWNED ;
 int M_NOWAIT ;
 int NG_NETFLOW_CONF_NODSTLOOKUP ;
 int NG_NETFLOW_CONF_NOSRCLOOKUP ;
 int NHR_REF ;
 size_t RTAX_GATEWAY ;
 size_t RTAX_NETMASK ;
 int RTA_NETMASK ;
 int RTF_GATEWAY ;
 int RTF_HOST ;
 int TAILQ_INSERT_TAIL (int *,struct flow_entry*,int ) ;
 int bcopy (struct flow_rec*,TYPE_7__*,int) ;
 void* bitcount32 (int ) ;
 int bzero (struct sockaddr_in*,int) ;
 int fle_hash ;
 int mtx_assert (int *,int ) ;
 int rib_free_info (struct sockaddr_in*) ;
 scalar_t__ rib_lookup_info (int ,struct sockaddr*,int ,int ,struct sockaddr_in*) ;
 int time_uptime ;
 struct flow_entry* uma_zalloc_arg (int ,TYPE_4__*,int ) ;

__attribute__((used)) static int
hash_insert(priv_p priv, struct flow_hash_entry *hsh, struct flow_rec *r,
 int plen, uint8_t flags, uint8_t tcp_flags)
{
 struct flow_entry *fle;
 struct sockaddr_in sin, sin_mask;
 struct sockaddr_dl rt_gateway;
 struct rt_addrinfo info;

 mtx_assert(&hsh->mtx, MA_OWNED);

 fle = uma_zalloc_arg(priv->zone, priv, M_NOWAIT);
 if (fle == ((void*)0)) {
  priv->nfinfo_alloc_failed++;
  return (ENOMEM);
 }





 fle->f.version = IPVERSION;
 bcopy(r, &fle->f.r, sizeof(struct flow_rec));
 fle->f.bytes = plen;
 fle->f.packets = 1;
 fle->f.tcp_flags = tcp_flags;

 fle->f.first = fle->f.last = time_uptime;





 if ((flags & NG_NETFLOW_CONF_NODSTLOOKUP) == 0) {
  bzero(&sin, sizeof(sin));
  sin.sin_len = sizeof(struct sockaddr_in);
  sin.sin_family = AF_INET;
  sin.sin_addr = fle->f.r.r_dst;

  rt_gateway.sdl_len = sizeof(rt_gateway);
  sin_mask.sin_len = sizeof(struct sockaddr_in);
  bzero(&info, sizeof(info));

  info.rti_info[RTAX_GATEWAY] = (struct sockaddr *)&rt_gateway;
  info.rti_info[RTAX_NETMASK] = (struct sockaddr *)&sin_mask;

  if (rib_lookup_info(r->fib, (struct sockaddr *)&sin, NHR_REF, 0,
      &info) == 0) {
   fle->f.fle_o_ifx = info.rti_ifp->if_index;

   if (info.rti_flags & RTF_GATEWAY &&
       rt_gateway.sdl_family == AF_INET)
    fle->f.next_hop =
        ((struct sockaddr_in *)&rt_gateway)->sin_addr;

   if (info.rti_addrs & RTA_NETMASK)
    fle->f.dst_mask = bitcount32(sin_mask.sin_addr.s_addr);
   else if (info.rti_flags & RTF_HOST)

    fle->f.dst_mask = 32;

   rib_free_info(&info);
  }
 }


 if ((flags & NG_NETFLOW_CONF_NOSRCLOOKUP) == 0) {
  bzero(&sin, sizeof(sin));
  sin.sin_len = sizeof(struct sockaddr_in);
  sin.sin_family = AF_INET;
  sin.sin_addr = fle->f.r.r_src;

  sin_mask.sin_len = sizeof(struct sockaddr_in);
  bzero(&info, sizeof(info));

  info.rti_info[RTAX_NETMASK] = (struct sockaddr *)&sin_mask;

  if (rib_lookup_info(r->fib, (struct sockaddr *)&sin, 0, 0,
      &info) == 0) {
   if (info.rti_addrs & RTA_NETMASK)
    fle->f.src_mask =
        bitcount32(sin_mask.sin_addr.s_addr);
   else if (info.rti_flags & RTF_HOST)

    fle->f.src_mask = 32;
  }
 }


 TAILQ_INSERT_TAIL(&hsh->head, fle, fle_hash);

 return (0);
}
