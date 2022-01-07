
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {int map; } ;


 int free (int ) ;

void
bm_dealloc(struct bitmap * bm)
{
 free(bm->map);
}
