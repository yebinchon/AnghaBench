
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef scalar_t__ uint8_t ;
typedef int int16_t ;


 int bs_read (int,long,scalar_t__*,int) ;

int16_t
bus_read_1(int rid, long ofs)
{
 uint8_t val;

 return ((!bs_read(rid, ofs, &val, sizeof(val))) ? -1 : (int)val);
}
