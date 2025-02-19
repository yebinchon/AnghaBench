
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t u_int ;
struct mod_item {int size; struct fhashbhead* main_ptr; } ;
struct fhashbhead {int dummy; } ;


 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int SLIST_INIT (struct fhashbhead*) ;
 struct fhashbhead* malloc (int,int ,int) ;
 int memset (struct mod_item*,int ,int) ;

__attribute__((used)) static int
ta_prepare_mod_fhash(void *ta_buf, uint64_t *pflags)
{
 struct mod_item *mi;
 struct fhashbhead *head;
 u_int i;

 mi = (struct mod_item *)ta_buf;

 memset(mi, 0, sizeof(struct mod_item));
 mi->size = *pflags;
 head = malloc(sizeof(struct fhashbhead) * mi->size, M_IPFW,
     M_WAITOK | M_ZERO);
 for (i = 0; i < mi->size; i++)
  SLIST_INIT(&head[i]);

 mi->main_ptr = head;

 return (0);
}
