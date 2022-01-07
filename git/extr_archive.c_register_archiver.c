
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archiver {int dummy; } ;


 int ALLOC_GROW (struct archiver**,scalar_t__,int ) ;
 int alloc_archivers ;
 struct archiver** archivers ;
 scalar_t__ nr_archivers ;

void register_archiver(struct archiver *ar)
{
 ALLOC_GROW(archivers, nr_archivers + 1, alloc_archivers);
 archivers[nr_archivers++] = ar;
}
