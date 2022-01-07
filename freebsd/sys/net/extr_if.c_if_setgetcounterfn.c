
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* if_t ;
typedef int if_get_counter_t ;
struct TYPE_3__ {int if_get_counter; } ;



void
if_setgetcounterfn(if_t ifp, if_get_counter_t fn)
{

 ifp->if_get_counter = fn;
}
