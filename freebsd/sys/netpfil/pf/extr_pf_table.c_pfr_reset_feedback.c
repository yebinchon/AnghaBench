
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_addr {int pfra_fback; } ;


 int PFR_FB_NONE ;

__attribute__((used)) static void
pfr_reset_feedback(struct pfr_addr *addr, int size)
{
 struct pfr_addr *ad;
 int i;

 for (i = 0, ad = addr; i < size; i++, ad++)
  ad->pfra_fback = PFR_FB_NONE;
}
