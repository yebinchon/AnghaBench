
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ofw_t ;


 int fdt_check_header (void*) ;
 void* fdtp ;

__attribute__((used)) static int
ofw_fdt_init(ofw_t ofw, void *data)
{
 int err;


 if ((err = fdt_check_header(data)) != 0)
  return (err);

 fdtp = data;
 return (0);
}
