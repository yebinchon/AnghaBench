
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_conf {scalar_t__ pc_class; scalar_t__ pc_subclass; } ;
struct TYPE_2__ {char const* desc; scalar_t__ class; scalar_t__ subclass; } ;


 TYPE_1__* pci_nomatch_tab ;

__attribute__((used)) static const char *
guess_subclass(struct pci_conf *p)
{
 int i;

 for (i = 0; pci_nomatch_tab[i].desc != ((void*)0); i++) {
  if ((pci_nomatch_tab[i].class == p->pc_class) &&
      (pci_nomatch_tab[i].subclass == p->pc_subclass))
   return(pci_nomatch_tab[i].desc);
 }
 return(((void*)0));
}
