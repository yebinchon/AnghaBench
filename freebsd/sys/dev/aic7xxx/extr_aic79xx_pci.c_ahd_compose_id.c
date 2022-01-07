
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;



__attribute__((used)) static __inline uint64_t
ahd_compose_id(u_int device, u_int vendor, u_int subdevice, u_int subvendor)
{
 uint64_t id;

 id = subvendor
    | (subdevice << 16)
    | ((uint64_t)vendor << 32)
    | ((uint64_t)device << 48);

 return (id);
}
