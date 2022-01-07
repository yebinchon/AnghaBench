
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint16_t ;


 int bs_write (int,long,int *,int) ;
 int errno ;

int
bus_write_2(int rid, long ofs, uint16_t val)
{

 return ((!bs_write(rid, ofs, &val, sizeof(val))) ? errno : 0);
}
