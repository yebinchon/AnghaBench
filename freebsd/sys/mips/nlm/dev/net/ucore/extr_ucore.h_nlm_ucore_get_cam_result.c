
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline__ int
nlm_ucore_get_cam_result(unsigned int cam_result)
{
 if (((cam_result >> 15) & 0x1) == 1)
     return (cam_result & 0x3fff);

 return 0;
}
