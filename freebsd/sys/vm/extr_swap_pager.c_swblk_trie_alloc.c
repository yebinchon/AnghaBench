
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pctrie {int dummy; } ;


 int M_NOWAIT ;
 int M_USE_RESERVE ;
 scalar_t__ curproc ;
 scalar_t__ pageproc ;
 int swpctrie_zone ;
 void* uma_zalloc (int ,int) ;

__attribute__((used)) static void *
swblk_trie_alloc(struct pctrie *ptree)
{

 return (uma_zalloc(swpctrie_zone, M_NOWAIT | (curproc == pageproc ?
     M_USE_RESERVE : 0)));
}
