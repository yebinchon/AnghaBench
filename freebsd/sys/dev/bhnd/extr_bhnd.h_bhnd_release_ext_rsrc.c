
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;


 int BHND_BUS_RELEASE_EXT_RSRC (int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline int
bhnd_release_ext_rsrc(device_t dev, u_int rsrc)
{
 return (BHND_BUS_RELEASE_EXT_RSRC(device_get_parent(dev), dev, rsrc));
}
