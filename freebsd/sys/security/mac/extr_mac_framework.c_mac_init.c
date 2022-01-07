
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int RM_NOWITNESS ;
 int RM_RECURSE ;
 int SX_NOWITNESS ;
 int mac_labelzone_init () ;
 int mac_policy_list ;
 int mac_policy_rm ;
 int mac_policy_sx ;
 int mac_static_policy_list ;
 int rm_init_flags (int *,char*,int) ;
 int sx_init_flags (int *,char*,int ) ;

__attribute__((used)) static void
mac_init(void)
{

 LIST_INIT(&mac_static_policy_list);
 LIST_INIT(&mac_policy_list);
 mac_labelzone_init();


 rm_init_flags(&mac_policy_rm, "mac_policy_rm", RM_NOWITNESS |
     RM_RECURSE);
 sx_init_flags(&mac_policy_sx, "mac_policy_sx", SX_NOWITNESS);

}
