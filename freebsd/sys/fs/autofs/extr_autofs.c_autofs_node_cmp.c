
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_node {int an_name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
autofs_node_cmp(const struct autofs_node *a, const struct autofs_node *b)
{

 return (strcmp(a->an_name, b->an_name));
}
