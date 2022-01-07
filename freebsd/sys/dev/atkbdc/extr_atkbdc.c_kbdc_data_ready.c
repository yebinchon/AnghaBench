
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int aux; int kbd; } ;
typedef int KBDC ;


 int KBDS_ANY_BUFFER_FULL ;
 scalar_t__ availq (int *) ;
 TYPE_1__* kbdcp (int ) ;
 int read_status (TYPE_1__*) ;

int
kbdc_data_ready(KBDC p)
{
    return (availq(&kbdcp(p)->kbd) || availq(&kbdcp(p)->aux)
 || (read_status(kbdcp(p)) & KBDS_ANY_BUFFER_FULL));
}
