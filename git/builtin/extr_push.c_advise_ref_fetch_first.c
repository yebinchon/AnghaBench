
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (int ) ;
 int advice_push_fetch_first ;
 int advice_push_update_rejected ;
 int advise (int ) ;
 int message_advice_ref_fetch_first ;

__attribute__((used)) static void advise_ref_fetch_first(void)
{
 if (!advice_push_fetch_first || !advice_push_update_rejected)
  return;
 advise(_(message_advice_ref_fetch_first));
}
