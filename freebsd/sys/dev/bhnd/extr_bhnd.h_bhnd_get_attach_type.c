
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bhnd_attach_type ;


 int BHND_BUS_GET_ATTACH_TYPE (int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline bhnd_attach_type
bhnd_get_attach_type (device_t dev) {
 return (BHND_BUS_GET_ATTACH_TYPE(device_get_parent(dev), dev));
}
