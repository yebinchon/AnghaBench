
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refs; int * names; int entries; scalar_t__ num_entries; } ;
typedef TYPE_1__ bhnd_nvram_plist ;


 int LIST_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 TYPE_1__* bhnd_nv_calloc (int,int) ;
 size_t nitems (int *) ;

bhnd_nvram_plist *
bhnd_nvram_plist_new(void)
{
 bhnd_nvram_plist *plist;

 plist = bhnd_nv_calloc(1, sizeof(*plist));
 if (plist == ((void*)0))
  return ((void*)0);


 plist->refs = 1;


 plist->num_entries = 0;
 TAILQ_INIT(&plist->entries);


 for (size_t i = 0; i < nitems(plist->names); i++)
  LIST_INIT(&plist->names[i]);

 return (plist);
}
