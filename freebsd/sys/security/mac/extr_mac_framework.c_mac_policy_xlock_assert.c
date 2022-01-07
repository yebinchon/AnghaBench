
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SA_XLOCKED ;
 int mac_late ;
 int mac_policy_sx ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
mac_policy_xlock_assert(void)
{


 if (!mac_late)
  return;


 sx_assert(&mac_policy_sx, SA_XLOCKED);

}
