
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int block_head_t ;


 struct block* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct block*,int ) ;
 int entry ;
 int free (struct block*) ;

__attribute__((used)) static void
free_block(block_head_t *pbh)
{
 struct block *ptr;

 while ((ptr = TAILQ_FIRST(pbh))) {
  TAILQ_REMOVE(pbh, ptr, entry);
  free(ptr);
 }
}
