
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ei; int * msg; } ;


 int MPASS (int) ;
 int nitems (TYPE_1__*) ;
 TYPE_1__* trap_data ;

__attribute__((used)) static bool
trap_enable_intr(int trapno)
{

 MPASS(trapno > 0);
 if (trapno < nitems(trap_data) && trap_data[trapno].msg != ((void*)0))
  return (trap_data[trapno].ei);
 return (0);
}
