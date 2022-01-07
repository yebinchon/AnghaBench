
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sim; } ;
struct TYPE_3__ {int path_id; } ;
typedef TYPE_2__* PVBUS_EXT ;
typedef int HPT_U8 ;



HPT_U8 os_get_vbus_seq(void *osext)
{
    return ((PVBUS_EXT)osext)->sim->path_id;
}
