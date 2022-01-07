
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PVBUS_EXT ;


 int __hpt_do_tasks (scalar_t__) ;
 int hpt_lock_vbus (scalar_t__) ;
 int hpt_unlock_vbus (scalar_t__) ;

__attribute__((used)) static void hpt_do_tasks(PVBUS_EXT vbus_ext, int pending)
{
 if(vbus_ext){
  hpt_lock_vbus(vbus_ext);
  __hpt_do_tasks(vbus_ext);
  hpt_unlock_vbus(vbus_ext);
 }
}
