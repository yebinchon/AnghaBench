
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrb {int map; } ;


 int bit_ffc (int ,int,int*) ;

__attribute__((used)) static inline bool
ub_full(struct unrb *ub, int len)
{
 int first_clear;

 bit_ffc(ub->map, len, &first_clear);
 return (first_clear == -1);
}
