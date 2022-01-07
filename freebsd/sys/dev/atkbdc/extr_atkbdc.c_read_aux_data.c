
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int aux; } ;
typedef int KBDC ;


 scalar_t__ availq (int *) ;
 TYPE_1__* kbdcp (int ) ;
 int read_data (TYPE_1__*) ;
 int removeq (int *) ;
 int wait_for_aux_data (TYPE_1__*) ;

int
read_aux_data(KBDC p)
{
    if (availq(&kbdcp(p)->aux))
        return removeq(&kbdcp(p)->aux);
    if (!wait_for_aux_data(kbdcp(p)))
        return -1;
    return read_data(kbdcp(p));
}
