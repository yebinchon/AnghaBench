
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gntdev_gmap {int dummy; } ;


 int notify_unmap_cleanup (struct gntdev_gmap*) ;

__attribute__((used)) static void
gntdev_gmap_pg_dtor(void *handle)
{

 notify_unmap_cleanup((struct gntdev_gmap *)handle);
}
