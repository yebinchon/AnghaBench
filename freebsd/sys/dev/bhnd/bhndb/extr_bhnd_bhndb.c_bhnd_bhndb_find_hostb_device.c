
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_core_match {int dummy; } ;
struct bhnd_core_info {int dummy; } ;
typedef int * device_t ;


 int BHNDB_GET_HOSTB_CORE (int ,int *,struct bhnd_core_info*) ;
 int * bhnd_bus_match_child (int *,struct bhnd_core_match*) ;
 struct bhnd_core_match bhnd_core_get_match_desc (struct bhnd_core_info*) ;
 int device_get_parent (int *) ;

__attribute__((used)) static device_t
bhnd_bhndb_find_hostb_device(device_t dev)
{
 struct bhnd_core_info core;
 struct bhnd_core_match md;
 int error;


 if ((error = BHNDB_GET_HOSTB_CORE(device_get_parent(dev), dev, &core)))
  return (((void*)0));


 md = bhnd_core_get_match_desc(&core);
 return (bhnd_bus_match_child(dev, &md));
}
