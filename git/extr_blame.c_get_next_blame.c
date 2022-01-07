
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_entry {void* next; } ;



__attribute__((used)) static void *get_next_blame(const void *p)
{
 return ((struct blame_entry *)p)->next;
}
