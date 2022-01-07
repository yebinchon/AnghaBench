
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOMEM () ;
 void* malloc (size_t) ;

__attribute__((used)) static void *
xmalloc(size_t len)
{
 void *p;

 if ((p = malloc(len)) == ((void*)0))
  NOMEM();
 return (p);
}
