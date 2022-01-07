
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_resources {int dwa_count; int dwa_freelist; } ;


 int bit_ffs (int ,int ,int*) ;

__attribute__((used)) static inline bool
bhndb_dw_all_free(struct bhndb_resources *br)
{
 int bit;
 bit_ffs(br->dwa_freelist, br->dwa_count, &bit);
 return (bit == -1);
}
