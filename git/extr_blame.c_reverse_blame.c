
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_entry {struct blame_entry* next; } ;



__attribute__((used)) static struct blame_entry *reverse_blame(struct blame_entry *head,
      struct blame_entry *tail)
{
 while (head) {
  struct blame_entry *next = head->next;
  head->next = tail;
  tail = head;
  head = next;
 }
 return tail;
}
