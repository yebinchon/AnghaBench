
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crash () ;
 void* malloc (size_t) ;
 int warnx (char*) ;

void *
xmalloc(size_t size)
{
 void *p;

 if ((p = malloc(size)) == ((void*)0)) {
  warnx("malloc failed");
  crash();
 }
 return (p);
}
