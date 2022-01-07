
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int bootverbose ;
 int * vesa_adp ;
 int vesa_bios_info (int ) ;
 int vesa_configure (int ) ;
 scalar_t__ vesa_init_done ;

__attribute__((used)) static int
vesa_load(void)
{
 int error;

 if (vesa_init_done)
  return (0);


 vesa_adp = ((void*)0);
 error = vesa_configure(0);

 if (error == 0)
  vesa_bios_info(bootverbose);


 if (error == ENODEV) {
  error = 0;
  vesa_adp = ((void*)0);
 }

 return (error);
}
