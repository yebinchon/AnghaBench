
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;


 int fdt_off_dt_struct (int ) ;
 int fdtp ;

__attribute__((used)) static int
fdt_phandle_offset(phandle_t p)
{
 int pint = (int)p;
 int dtoff = fdt_off_dt_struct(fdtp);

 if (pint < dtoff)
  return (-1);
 return (pint - dtoff);
}
