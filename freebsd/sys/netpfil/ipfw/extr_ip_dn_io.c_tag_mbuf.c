
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct TYPE_3__ {int info; } ;
struct ip_fw_args {int flags; int * ifp; TYPE_1__ rule; } ;
struct dn_pkt_tag {int dn_dir; int iphdr_off; int output_time; int * ifp; TYPE_1__ rule; } ;
struct TYPE_4__ {int curr_time; } ;


 int ETHER_HDR_LEN ;
 int IPFW_ARGS_OUT ;
 int IPFW_ONEPASS ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PACKET_TAG_DUMMYNET ;
 int PROTO_LAYER2 ;
 TYPE_2__ dn_cfg ;
 struct m_tag* m_tag_get (int ,int,int) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;

__attribute__((used)) static inline int
tag_mbuf(struct mbuf *m, int dir, struct ip_fw_args *fwa)
{
 struct dn_pkt_tag *dt;
 struct m_tag *mtag;

 mtag = m_tag_get(PACKET_TAG_DUMMYNET,
      sizeof(*dt), M_NOWAIT | M_ZERO);
 if (mtag == ((void*)0))
  return 1;
 m_tag_prepend(m, mtag);
 dt = (struct dn_pkt_tag *)(mtag + 1);
 dt->rule = fwa->rule;
 dt->rule.info &= IPFW_ONEPASS;
 dt->dn_dir = dir;
 dt->ifp = fwa->flags & IPFW_ARGS_OUT ? fwa->ifp : ((void*)0);

 dt->output_time = dn_cfg.curr_time;
 dt->iphdr_off = (dir & PROTO_LAYER2) ? ETHER_HDR_LEN : 0;
 return 0;
}
