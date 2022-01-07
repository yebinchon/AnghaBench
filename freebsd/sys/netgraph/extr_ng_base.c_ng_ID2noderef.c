
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ node_p ;
typedef int ng_ID_t ;


 int IDHASH_RLOCK () ;
 int IDHASH_RUNLOCK () ;
 int NG_IDHASH_FIND (int ,scalar_t__) ;
 int NG_NODE_REF (scalar_t__) ;

__attribute__((used)) static node_p
ng_ID2noderef(ng_ID_t ID)
{
 node_p node;

 IDHASH_RLOCK();
 NG_IDHASH_FIND(ID, node);
 if (node)
  NG_NODE_REF(node);
 IDHASH_RUNLOCK();
 return(node);
}
