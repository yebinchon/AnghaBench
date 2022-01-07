
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {int inuse; } ;


 TYPE_1__ devsoftc ;

boolean_t
devctl_process_running(void)
{
 return (devsoftc.inuse == 1);
}
