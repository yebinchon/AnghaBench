
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct secasvar {scalar_t__ firstused; int lft_c_allocations; int lft_c_bytes; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int IPSEC_ASSERT (int ,char*) ;
 int counter_u64_add (int ,int) ;
 scalar_t__ time_second ;

void
key_sa_recordxfer(struct secasvar *sav, struct mbuf *m)
{
 IPSEC_ASSERT(sav != ((void*)0), ("Null secasvar"));
 IPSEC_ASSERT(m != ((void*)0), ("Null mbuf"));





 counter_u64_add(sav->lft_c_bytes, m->m_pkthdr.len);






 counter_u64_add(sav->lft_c_allocations, 1);
 if (sav->firstused == 0)
  sav->firstused = time_second;
}
