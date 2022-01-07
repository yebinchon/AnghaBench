
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrb {int map; } ;


 int bit_ffs (int ,int,int*) ;

__attribute__((used)) static inline bool
ub_empty(struct unrb *ub, int len) {
 int first_set;

 bit_ffs(ub->map, len, &first_set);
 return (first_set == -1);
}
