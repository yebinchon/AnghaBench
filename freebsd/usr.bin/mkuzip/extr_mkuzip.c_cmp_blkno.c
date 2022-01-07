
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ blkno; } ;
struct mkuz_blk {TYPE_1__ info; } ;



__attribute__((used)) static int
cmp_blkno(const struct mkuz_blk *bp, void *p)
{
 uint32_t *ap;

 ap = (uint32_t *)p;

 return (bp->info.blkno == *ap);
}
