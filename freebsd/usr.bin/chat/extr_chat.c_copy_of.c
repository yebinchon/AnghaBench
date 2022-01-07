
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* dup_mem (char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void *
copy_of(char *s)
{
    return dup_mem (s, strlen (s) + 1);
}
