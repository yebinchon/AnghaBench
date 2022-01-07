
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xen_intr_handle_t ;
struct xenisrc {int * xi_cookie; int xi_vector; } ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;


 int EINVAL ;
 int INTR_EXCL ;
 int intr_add_handler (char const*,int ,int ,int ,void*,int,int **,int ) ;
 int printf (char*,char const*,int) ;
 struct xenisrc* xen_intr_isrc (int ) ;

int
xen_intr_add_handler(const char *name, driver_filter_t filter,
    driver_intr_t handler, void *arg, enum intr_type flags,
    xen_intr_handle_t handle)
{
 struct xenisrc *isrc;
 int error;

 isrc = xen_intr_isrc(handle);
 if (isrc == ((void*)0) || isrc->xi_cookie != ((void*)0))
  return (EINVAL);

 error = intr_add_handler(name, isrc->xi_vector,filter, handler, arg,
     flags|INTR_EXCL, &isrc->xi_cookie, 0);
 if (error != 0) {
  printf(
      "%s: xen_intr_add_handler: intr_add_handler failed: %d\n",
      name, error);
 }

 return (error);
}
