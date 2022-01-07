
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 int err (int ,char*) ;
 void* malloc (int) ;

__attribute__((used)) static void *
ofw_malloc(int size)
{
 void *p;

 if ((p = malloc(size)) == ((void*)0))
  err(EX_OSERR, "malloc() failed");
 return (p);
}
