
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;
 void* malloc (size_t) ;

__attribute__((used)) static void *
getspace(int blk)
{
 void *bp;

 if ((bp = malloc((size_t)blk)) == ((void*)0))
  errx(11, "no memory");
 return (bp);
}
