
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_core_info {int dummy; } ;
typedef int device_t ;


 int BHNDB_IS_CORE_DISABLED (int ,int ,struct bhnd_core_info*) ;
 struct bhnd_core_info bhnd_get_core_info (int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static bool
bhnd_bhndb_is_hw_disabled(device_t dev, device_t child)
{
 struct bhnd_core_info core = bhnd_get_core_info(child);


 return (BHNDB_IS_CORE_DISABLED(device_get_parent(dev), dev, &core));
}
