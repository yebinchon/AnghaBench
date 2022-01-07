
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int at_value; int * at_act; } ;


 int EX_OSERR ;
 TYPE_1__* act_tbl ;
 int err (int ,char*) ;
 int free (char*) ;
 int strcmp (char*,int *) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;
 int timeout_act_error (char const*,char*) ;

__attribute__((used)) static int
timeout_act_str2int(const char *lopt, const char *acts)
{
 int i;
 char *dupacts, *tofree;
 char *o;
 int rv = 0;

 tofree = dupacts = strdup(acts);
 if (!tofree)
  err(EX_OSERR, "malloc");
 while ((o = strsep(&dupacts, ",")) != ((void*)0)) {
  for (i = 0; act_tbl[i].at_act != ((void*)0); i++) {
   if (!strcmp(o, act_tbl[i].at_act)) {
    rv |= act_tbl[i].at_value;
    break;
   }
  }
  if (act_tbl[i].at_act == ((void*)0))
   timeout_act_error(lopt, o);
 }
 free(tofree);
 return rv;
}
