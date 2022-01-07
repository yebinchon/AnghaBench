
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhnd_resource {int dummy; } ;
typedef int device_t ;


 struct bhnd_resource* bhnd_alloc_resource (int ,int,int*,int ,int ,int,int ) ;

__attribute__((used)) static inline struct bhnd_resource *
bhnd_alloc_resource_any(device_t dev, int type, int *rid, u_int flags)
{
 return bhnd_alloc_resource(dev, type, rid, 0, ~0, 1, flags);
}
