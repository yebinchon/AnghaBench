
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (int ) ;
 int advice_push_needs_force ;
 int advice_push_update_rejected ;
 int advise (int ) ;
 int message_advice_ref_needs_force ;

__attribute__((used)) static void advise_ref_needs_force(void)
{
 if (!advice_push_needs_force || !advice_push_update_rejected)
  return;
 advise(_(message_advice_ref_needs_force));
}
