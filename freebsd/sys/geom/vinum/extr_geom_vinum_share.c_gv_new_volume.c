
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_volume {int name; int state; } ;


 int g_free (struct gv_volume*) ;
 struct gv_volume* gv_alloc_volume () ;
 int gv_volstatei (char*) ;
 int strcmp (char*,char*) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ strlen (int ) ;

struct gv_volume *
gv_new_volume(int max, char *token[])
{
 struct gv_volume *v;
 int j, errors;

 if (token[1] == ((void*)0) || *token[1] == '\0')
  return (((void*)0));

 v = gv_alloc_volume();
 if (v == ((void*)0))
  return (((void*)0));

 errors = 0;
 for (j = 1; j < max; j++) {
  if (!strcmp(token[j], "state")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   v->state = gv_volstatei(token[j]);
  } else {

   strlcpy(v->name, token[j], sizeof(v->name));
  }
 }

 if (strlen(v->name) == 0)
  errors++;

 if (errors) {
  g_free(v);
  return (((void*)0));
 }

 return (v);
}
