
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {scalar_t__ key; } ;



__attribute__((used)) static int
compare(const struct node *a, const struct node *b)
{
 if (a->key < b->key) return (-1);
 else if (a->key > b->key) return (1);
 return (0);
}
