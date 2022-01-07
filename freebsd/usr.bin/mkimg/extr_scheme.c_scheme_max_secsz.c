
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ maxsecsz; } ;


 scalar_t__ INT_MAX ;
 TYPE_1__* scheme ;

u_int
scheme_max_secsz(void)
{

 return ((scheme == ((void*)0)) ? INT_MAX+1U : scheme->maxsecsz);
}
