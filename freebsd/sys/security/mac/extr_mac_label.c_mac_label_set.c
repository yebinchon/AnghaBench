
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {intptr_t* l_perpolicy; } ;


 int KASSERT (int ,char*) ;

void
mac_label_set(struct label *l, int slot, intptr_t v)
{

 KASSERT(l != ((void*)0), ("mac_label_set: NULL label"));

 l->l_perpolicy[slot] = v;
}
