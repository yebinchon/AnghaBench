
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

int git_munmap(void *start, size_t length)
{
 free(start);
 return 0;
}
