
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef void* uint16_t ;
struct pctrie_node {void* pn_clev; void* pn_count; int pn_owner; } ;
struct pctrie {int dummy; } ;
typedef struct pctrie_node* (* pctrie_alloc_t ) (struct pctrie*) ;



__attribute__((used)) static __inline struct pctrie_node *
pctrie_node_get(struct pctrie *ptree, pctrie_alloc_t allocfn, uint64_t owner,
    uint16_t count, uint16_t clevel)
{
 struct pctrie_node *node;

 node = allocfn(ptree);
 if (node == ((void*)0))
  return (((void*)0));
 node->pn_owner = owner;
 node->pn_count = count;
 node->pn_clev = clevel;

 return (node);
}
