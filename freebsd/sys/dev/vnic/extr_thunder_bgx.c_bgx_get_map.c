
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int MAX_BGX_PER_CN88XX ;
 scalar_t__* bgx_vnic ;

u_int
bgx_get_map(int node)
{
 int i;
 u_int map = 0;

 for (i = 0; i < MAX_BGX_PER_CN88XX; i++) {
  if (bgx_vnic[(node * MAX_BGX_PER_CN88XX) + i])
   map |= (1 << i);
 }

 return (map);
}
