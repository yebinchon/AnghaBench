
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 void* malloc (int) ;

__attribute__((used)) static void *xmalloc(size_t size)
{
 void *ret = malloc(size);
 if (!ret && !size)
  ret = malloc(1);
 if (!ret)
   die("Out of memory");
 return ret;
}
