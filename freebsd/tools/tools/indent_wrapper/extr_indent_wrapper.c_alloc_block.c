
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int length; void* data; void* mask; } ;


 int BLOCK_SIZE ;
 int EX_SOFTWARE ;
 int errx (int ,char*) ;
 struct block* malloc (size_t) ;
 int memset (struct block*,int ,size_t) ;

__attribute__((used)) static struct block *
alloc_block(void)
{
 struct block *pb;
 size_t size = sizeof(*pb) + (2 * BLOCK_SIZE);

 pb = malloc(size);
 if (pb == ((void*)0))
  errx(EX_SOFTWARE, "Out of memory");
 memset(pb, 0, size);
 pb->data = (void *)(pb + 1);
 pb->mask = pb->data + BLOCK_SIZE;
 pb->length = BLOCK_SIZE;
 return (pb);
}
