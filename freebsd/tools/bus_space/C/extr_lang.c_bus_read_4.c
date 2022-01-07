
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef scalar_t__ uint32_t ;
typedef int int64_t ;


 int bs_read (int,long,scalar_t__*,int) ;

int64_t
bus_read_4(int rid, long ofs)
{
 uint32_t val;

 return ((!bs_read(rid, ofs, &val, sizeof(val))) ? -1 : (int64_t)val);
}
