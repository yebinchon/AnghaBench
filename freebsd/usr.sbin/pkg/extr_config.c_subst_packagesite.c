
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct TYPE_2__ {char* value; char* val; } ;


 size_t PACKAGESITE ;
 TYPE_1__* c ;
 int free (char*) ;
 int sbuf_bcat (struct sbuf*,char const*,int) ;
 int sbuf_cat (struct sbuf*,char const*) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 char* strdup (int ) ;
 int strlen (char*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static void
subst_packagesite(const char *abi)
{
 struct sbuf *newval;
 const char *variable_string;
 const char *oldval;

 if (c[PACKAGESITE].value != ((void*)0))
  oldval = c[PACKAGESITE].value;
 else
  oldval = c[PACKAGESITE].val;

 if ((variable_string = strstr(oldval, "${ABI}")) == ((void*)0))
  return;

 newval = sbuf_new_auto();
 sbuf_bcat(newval, oldval, variable_string - oldval);
 sbuf_cat(newval, abi);
 sbuf_cat(newval, variable_string + strlen("${ABI}"));
 sbuf_finish(newval);

 free(c[PACKAGESITE].value);
 c[PACKAGESITE].value = strdup(sbuf_data(newval));
}
