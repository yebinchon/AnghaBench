
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bzero (void*,int) ;
 int errx (int,char*) ;
 void* malloc (int) ;

__attribute__((used)) static void *
xmalloc(int sz)
{
 void *p;

 sz = (sz + 7) & ~7;
 p = malloc(sz);
 if (p == ((void*)0))
  errx(1, "malloc");
 bzero(p, sz);
 return (p);
}
