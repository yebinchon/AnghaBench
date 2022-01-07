
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_chipid {int dummy; } ;
typedef int device_t ;


 struct bhnd_chipid const* BHND_BUS_GET_CHIPID (int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline const struct bhnd_chipid *
bhnd_get_chipid(device_t dev) {
 return (BHND_BUS_GET_CHIPID(device_get_parent(dev), dev));
}
