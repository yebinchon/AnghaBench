
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ids ;
typedef int PVBUS_EXT ;
typedef int DEVICEID ;


 int __hpt_stop_tasks (int ,int ) ;
 int hpt_get_logical_devices (int *,int) ;

__attribute__((used)) static void hpt_stop_tasks(PVBUS_EXT vbus_ext)
{
 DEVICEID ids[32];
 int i, count;

 count = hpt_get_logical_devices((DEVICEID *)&ids, sizeof(ids)/sizeof(ids[0]));

 for (i=0; i<count; i++)
  __hpt_stop_tasks(vbus_ext, ids[i]);
}
