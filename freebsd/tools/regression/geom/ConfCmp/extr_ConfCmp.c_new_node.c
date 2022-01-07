
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int children; void* key; void* cont; } ;


 int LIST_INIT (int *) ;
 struct node* calloc (int,int) ;
 int sbuf_clear (void*) ;
 void* sbuf_new_auto () ;

__attribute__((used)) static struct node *
new_node(void)
{
 struct node *np;

 np = calloc(1, sizeof *np);
 np->cont = sbuf_new_auto();
 sbuf_clear(np->cont);
 np->key = sbuf_new_auto();
 sbuf_clear(np->key);
 LIST_INIT(&np->children);
 return (np);
}
