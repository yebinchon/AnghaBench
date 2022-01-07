
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (int,size_t) ;
 int errx (int,char*) ;

__attribute__((used)) static void *
xmalloc(size_t size)
{
 void *m;

 if ((m = calloc(1, size)) == ((void*)0))
  errx(1, "memory allocation failure");
 return (m);
}
