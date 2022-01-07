
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {intptr_t* l_perpolicy; } ;


 int KASSERT (int ,char*) ;

intptr_t
mac_label_get(struct label *l, int slot)
{

 KASSERT(l != ((void*)0), ("mac_label_get: NULL label"));

 return (l->l_perpolicy[slot]);
}
