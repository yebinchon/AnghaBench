
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;


 int uiomove_faultflag (void*,int,struct uio*,int) ;

int
uiomove_nofault(void *cp, int n, struct uio *uio)
{

 return (uiomove_faultflag(cp, n, uio, 1));
}
