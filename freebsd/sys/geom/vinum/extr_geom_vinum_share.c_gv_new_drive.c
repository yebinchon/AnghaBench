
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_drive {int device; int name; int state; } ;


 int g_free (struct gv_drive*) ;
 struct gv_drive* gv_alloc_drive () ;
 int gv_drivestatei (char*) ;
 int strcmp (char*,char*) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

struct gv_drive *
gv_new_drive(int max, char *token[])
{
 struct gv_drive *d;
 int j, errors;
 char *ptr;

 if (token[1] == ((void*)0) || *token[1] == '\0')
  return (((void*)0));
 d = gv_alloc_drive();
 if (d == ((void*)0))
  return (((void*)0));
 errors = 0;
 for (j = 1; j < max; j++) {
  if (!strcmp(token[j], "state")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   d->state = gv_drivestatei(token[j]);
  } else if (!strcmp(token[j], "device")) {
   j++;
   if (j >= max) {
    errors++;
    break;
   }
   ptr = token[j];

   if (strncmp(ptr, "/dev/", 5) == 0)
    ptr += 5;
   strlcpy(d->device, ptr, sizeof(d->device));
  } else {

   strlcpy(d->name, token[j], sizeof(d->name));
  }
 }

 if (strlen(d->name) == 0 || strlen(d->device) == 0)
  errors++;

 if (errors) {
  g_free(d);
  return (((void*)0));
 }

 return (d);
}
