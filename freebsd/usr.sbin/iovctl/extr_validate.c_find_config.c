
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int DRIVER_CONFIG_NAME ;
 int IOV_CONFIG_NAME ;
 int NV_FLAG_IGNORE_CASE ;
 int * dnvlist_take_nvlist (int *,char const*,int *) ;
 int err (int,char*) ;
 int * nvlist_create (int ) ;
 int nvlist_move_nvlist (int *,int ,int *) ;

__attribute__((used)) static nvlist_t *
find_config(nvlist_t *config, const char * device)
{
 nvlist_t *subsystem, *empty_driver, *empty_iov;

 subsystem = dnvlist_take_nvlist(config, device, ((void*)0));

 if (subsystem != ((void*)0))
  return (subsystem);

 empty_driver = nvlist_create(NV_FLAG_IGNORE_CASE);
 if (empty_driver == ((void*)0))
  err(1, "Could not allocate config nvlist");

 empty_iov = nvlist_create(NV_FLAG_IGNORE_CASE);
 if (empty_iov == ((void*)0))
  err(1, "Could not allocate config nvlist");

 subsystem = nvlist_create(NV_FLAG_IGNORE_CASE);
 if (subsystem == ((void*)0))
  err(1, "Could not allocate config nvlist");

 nvlist_move_nvlist(subsystem, DRIVER_CONFIG_NAME, empty_driver);
 nvlist_move_nvlist(subsystem, IOV_CONFIG_NAME, empty_iov);

 return (subsystem);
}
