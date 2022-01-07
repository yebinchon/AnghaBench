
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pctrie {int dummy; } ;


 int M_NOWAIT ;
 int buf_trie_zone ;
 void* uma_zalloc (int ,int ) ;

__attribute__((used)) static void *
buf_trie_alloc(struct pctrie *ptree)
{

 return uma_zalloc(buf_trie_zone, M_NOWAIT);
}
