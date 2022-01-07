
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pctrie {int dummy; } ;


 int swpctrie_zone ;
 int uma_zfree (int ,void*) ;

__attribute__((used)) static void
swblk_trie_free(struct pctrie *ptree, void *node)
{

 uma_zfree(swpctrie_zone, node);
}
