
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (int ) ;
 int advice_push_already_exists ;
 int advice_push_update_rejected ;
 int advise (int ) ;
 int message_advice_ref_already_exists ;

__attribute__((used)) static void advise_ref_already_exists(void)
{
 if (!advice_push_already_exists || !advice_push_update_rejected)
  return;
 advise(_(message_advice_ref_already_exists));
}
