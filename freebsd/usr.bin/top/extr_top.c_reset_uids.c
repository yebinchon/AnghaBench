
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* uid; } ;


 size_t TOP_MAX_UIDS ;
 TYPE_1__ ps ;

__attribute__((used)) static void
reset_uids(void)
{
    for (size_t i = 0; i < TOP_MAX_UIDS; ++i)
 ps.uid[i] = -1;
}
