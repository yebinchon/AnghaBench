
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active_vty; } ;


 TYPE_1__ cur_info ;
 int printf (char*,int) ;

__attribute__((used)) static void
show_active_info(void)
{

 printf("%d\n", cur_info.active_vty);
}
