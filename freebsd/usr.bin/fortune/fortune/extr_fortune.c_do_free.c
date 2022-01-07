
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

__attribute__((used)) static void
do_free(void *ptr)
{
 if (ptr != ((void*)0))
  free(ptr);
}
