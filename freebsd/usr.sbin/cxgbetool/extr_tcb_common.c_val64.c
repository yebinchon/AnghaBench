
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ui64 ;
struct TYPE_3__ {int rawval; } ;
typedef TYPE_1__ _TCBVAR ;


 TYPE_1__* lu_tcbvar (char*) ;

ui64
val64(char *name)
{
  _TCBVAR *tvp;

  tvp=lu_tcbvar(name);
  return tvp->rawval;
}
