
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int bandwidth; } ;
struct dn_schk {TYPE_1__ link; struct dn_profile* profile; } ;
struct dn_profile {int samples_no; int loss_level; scalar_t__* samples; } ;
struct dn_pkt_tag {int dn_dir; } ;


 int DIR_DROP ;
 int div64 (int,int) ;
 struct dn_pkt_tag* dn_tag_get (struct mbuf*) ;
 int random () ;

__attribute__((used)) static uint64_t
extra_bits(struct mbuf *m, struct dn_schk *s)
{
 int index;
 uint64_t bits;
 struct dn_profile *pf = s->profile;

 if (!pf || pf->samples_no == 0)
  return 0;
 index = random() % pf->samples_no;
 bits = div64((uint64_t)pf->samples[index] * s->link.bandwidth, 1000);
 if (index >= pf->loss_level) {
  struct dn_pkt_tag *dt = dn_tag_get(m);
  if (dt)
   dt->dn_dir = DIR_DROP;
 }
 return bits;
}
