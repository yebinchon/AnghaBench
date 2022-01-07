
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t sl_cur; char** sl_str; } ;
struct TYPE_6__ {char** sl_str; size_t sl_cur; } ;
typedef TYPE_1__ StringList ;


 int err (int,char*) ;
 int init_locales_list () ;
 TYPE_5__* locales ;
 int printf (char*,char*) ;
 int qsort (char**,size_t,int,int ) ;
 int scmp ;
 int sl_add (TYPE_1__*,char*) ;
 int * sl_find (TYPE_1__*,char*) ;
 TYPE_1__* sl_init () ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;

void
list_charmaps(void)
{
 size_t i;
 char *s, *cs;
 StringList *charmaps;


 charmaps = sl_init();
 if (charmaps == ((void*)0))
  err(1, "could not allocate memory");


 init_locales_list();


 for (i = 0; i < locales->sl_cur; i++) {
  s = locales->sl_str[i];
  if ((cs = strchr(s, '.')) != ((void*)0)) {
   cs++;
   if (sl_find(charmaps, cs) == ((void*)0))
    sl_add(charmaps, cs);
  }
 }


 if (sl_find(charmaps, "US-ASCII") == ((void*)0))
  sl_add(charmaps, strdup("US-ASCII"));


 qsort(charmaps->sl_str, charmaps->sl_cur, sizeof(char *), scmp);


 for (i = 0; i < charmaps->sl_cur; i++) {
  printf("%s\n", charmaps->sl_str[i]);
 }
}
