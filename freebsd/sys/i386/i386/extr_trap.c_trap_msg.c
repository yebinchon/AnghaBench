
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* msg; } ;


 int nitems (TYPE_1__*) ;
 TYPE_1__* trap_data ;

__attribute__((used)) static const char *
trap_msg(int trapno)
{
 const char *res;
 static const char unkn[] = "UNKNOWN";

 res = ((void*)0);
 if (trapno < nitems(trap_data))
  res = trap_data[trapno].msg;
 if (res == ((void*)0))
  res = unkn;
 return (res);
}
