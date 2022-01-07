
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_devinfo {int resources; } ;
typedef int device_t ;


 int M_BHND ;
 struct bhndb_devinfo* device_get_ivars (int ) ;
 int device_set_ivars (int ,int *) ;
 int free (struct bhndb_devinfo*,int ) ;
 int resource_list_free (int *) ;

__attribute__((used)) static void
bhndb_child_deleted(device_t dev, device_t child)
{
 struct bhndb_devinfo *dinfo = device_get_ivars(child);
 if (dinfo != ((void*)0)) {
  resource_list_free(&dinfo->resources);
  free(dinfo, M_BHND);
 }

 device_set_ivars(child, ((void*)0));
}
