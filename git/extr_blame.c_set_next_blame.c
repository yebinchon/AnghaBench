
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_entry {void* next; } ;



__attribute__((used)) static void set_next_blame(void *p1, void *p2)
{
 ((struct blame_entry *)p1)->next = p2;
}
