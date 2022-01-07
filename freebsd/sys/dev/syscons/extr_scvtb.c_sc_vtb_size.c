
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;



size_t
sc_vtb_size(int cols, int rows)
{
 return (size_t)(cols*rows*sizeof(u_int16_t));
}
