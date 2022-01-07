
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {void* next; } ;



__attribute__((used)) static void *commit_list_get_next(const void *a)
{
 return ((const struct commit_list *)a)->next;
}
