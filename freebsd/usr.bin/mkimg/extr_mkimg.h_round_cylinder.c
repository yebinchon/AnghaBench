
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef scalar_t__ lba_t ;


 scalar_t__ nheads ;
 scalar_t__ nsecs ;

__attribute__((used)) static inline lba_t
round_cylinder(lba_t n)
{
 u_int cyl = nsecs * nheads;
 u_int r = n % cyl;
 return ((r == 0) ? n : n + cyl - r);
}
