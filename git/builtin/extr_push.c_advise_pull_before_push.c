
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (int ) ;
 int advice_push_non_ff_current ;
 int advice_push_update_rejected ;
 int advise (int ) ;
 int message_advice_pull_before_push ;

__attribute__((used)) static void advise_pull_before_push(void)
{
 if (!advice_push_non_ff_current || !advice_push_update_rejected)
  return;
 advise(_(message_advice_pull_before_push));
}
