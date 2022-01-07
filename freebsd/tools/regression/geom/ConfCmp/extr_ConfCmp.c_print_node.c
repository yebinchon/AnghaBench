
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {char* name; char* id; char* ref; int key; int cont; } ;


 int printf (char*,...) ;
 char* sbuf_data (int ) ;

__attribute__((used)) static void
print_node(struct node *np)
{
 printf("\"%s\" -- \"%s\" -- \"%s\"", np->name, sbuf_data(np->cont), sbuf_data(np->key));
 if (np->id)
  printf(" id=\"%s\"", np->id);
 if (np->ref)
  printf(" ref=\"%s\"", np->ref);
 printf("\n");
}
