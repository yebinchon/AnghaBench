
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct unimem_debug {char* file; int lno; scalar_t__ data; } ;
typedef int caddr_t ;


 struct unimem_debug* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct unimem_debug*,int ) ;
 int M_UNI ;
 size_t UNIMEM_TYPES ;
 int free (struct unimem_debug*,int ) ;
 int link ;
 int mtx_destroy (int *) ;
 int * nguni_freemem ;
 int nguni_unilist_mtx ;
 int * nguni_usedmem ;
 int printf (char*,char*,int ,char*,int) ;
 char** unimem_names ;

__attribute__((used)) static void
uni_fini(void)
{
 u_int type;
 struct unimem_debug *h;

 for (type = 0; type < UNIMEM_TYPES; type++) {
  while ((h = LIST_FIRST(&nguni_freemem[type])) != ((void*)0)) {
   LIST_REMOVE(h, link);
   free(h, M_UNI);
  }

  while ((h = LIST_FIRST(&nguni_usedmem[type])) != ((void*)0)) {
   LIST_REMOVE(h, link);
   printf("ng_uni: %s in use: %p (%s,%u)\n",
       unimem_names[type], (caddr_t)h->data,
       h->file, h->lno);
   free(h, M_UNI);
  }
 }

 mtx_destroy(&nguni_unilist_mtx);
}
