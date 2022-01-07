
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ip6_pktopts {TYPE_1__* ip6po_nexthop; int * ip6po_pktinfo; int ip6po_prefer_tempaddr; int ip6po_minmtu; int ip6po_flags; int ip6po_tclass; int ip6po_hlim; } ;
struct TYPE_3__ {int sa_len; } ;


 int EINVAL ;
 int ENOBUFS ;
 int M_IP6OPT ;
 int PKTOPT_EXTHDRCPY (int ) ;
 int bcopy (TYPE_1__*,TYPE_1__*,int) ;
 int ip6_clearpktopts (struct ip6_pktopts*,int) ;
 int ip6po_dest1 ;
 int ip6po_dest2 ;
 int ip6po_hbh ;
 int ip6po_rthdr ;
 void* malloc (int,int ,int) ;
 int printf (char*) ;

__attribute__((used)) static int
copypktopts(struct ip6_pktopts *dst, struct ip6_pktopts *src, int canwait)
{
 if (dst == ((void*)0) || src == ((void*)0)) {
  printf("ip6_clearpktopts: invalid argument\n");
  return (EINVAL);
 }

 dst->ip6po_hlim = src->ip6po_hlim;
 dst->ip6po_tclass = src->ip6po_tclass;
 dst->ip6po_flags = src->ip6po_flags;
 dst->ip6po_minmtu = src->ip6po_minmtu;
 dst->ip6po_prefer_tempaddr = src->ip6po_prefer_tempaddr;
 if (src->ip6po_pktinfo) {
  dst->ip6po_pktinfo = malloc(sizeof(*dst->ip6po_pktinfo),
      M_IP6OPT, canwait);
  if (dst->ip6po_pktinfo == ((void*)0))
   goto bad;
  *dst->ip6po_pktinfo = *src->ip6po_pktinfo;
 }
 if (src->ip6po_nexthop) {
  dst->ip6po_nexthop = malloc(src->ip6po_nexthop->sa_len,
      M_IP6OPT, canwait);
  if (dst->ip6po_nexthop == ((void*)0))
   goto bad;
  bcopy(src->ip6po_nexthop, dst->ip6po_nexthop,
      src->ip6po_nexthop->sa_len);
 }
 PKTOPT_EXTHDRCPY(ip6po_hbh);
 PKTOPT_EXTHDRCPY(ip6po_dest1);
 PKTOPT_EXTHDRCPY(ip6po_dest2);
 PKTOPT_EXTHDRCPY(ip6po_rthdr);
 return (0);

  bad:
 ip6_clearpktopts(dst, -1);
 return (ENOBUFS);
}
