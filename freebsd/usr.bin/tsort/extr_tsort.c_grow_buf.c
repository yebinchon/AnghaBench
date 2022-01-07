
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,int *) ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void *
grow_buf(void *bp, size_t size)
{
 if ((bp = realloc(bp, size)) == ((void*)0))
  err(1, ((void*)0));
 return (bp);
}
