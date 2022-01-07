
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bs_subregion (int,long,long) ;

int
bus_subregion(int rid, long ofs, long sz)
{

 return (bs_subregion(rid, ofs, sz));
}
