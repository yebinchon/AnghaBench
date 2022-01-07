
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct mbuf {int dummy; } ;
typedef int ao ;


 int memcpy (void*,int*,int) ;
 int pf_proto_cksum_fixup (struct mbuf*,int ,int,int,int ) ;

void
pf_change_proto_a(struct mbuf *m, void *a, u_int16_t *c, u_int32_t an, u_int8_t udp)
{
 u_int32_t ao;

 memcpy(&ao, a, sizeof(ao));
 memcpy(a, &an, sizeof(u_int32_t));

 *c = pf_proto_cksum_fixup(m,
     pf_proto_cksum_fixup(m, *c, ao / 65536, an / 65536, udp),
     ao % 65536, an % 65536, udp);
}
