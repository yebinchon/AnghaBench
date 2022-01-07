
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bs_unmap (int) ;
 int errno ;

int
bus_unmap(int rid)
{

 return ((!bs_unmap(rid)) ? errno : 0);
}
