
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhnd_resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct bhnd_resource* BHND_BUS_ALLOC_RESOURCE (int ,int ,int,int*,int ,int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline struct bhnd_resource *
bhnd_alloc_resource(device_t dev, int type, int *rid, rman_res_t start,
    rman_res_t end, rman_res_t count, u_int flags)
{
 return BHND_BUS_ALLOC_RESOURCE(device_get_parent(dev), dev, type, rid,
     start, end, count, flags);
}
