
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;


 scalar_t__ fdt_off_dt_struct (int ) ;
 int fdtp ;

__attribute__((used)) static phandle_t
fdt_offset_phandle(int offset)
{
 if (offset < 0)
  return (0);
 return ((phandle_t)offset + fdt_off_dt_struct(fdtp));
}
