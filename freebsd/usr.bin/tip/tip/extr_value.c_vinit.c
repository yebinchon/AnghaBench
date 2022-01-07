
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v_type; char* v_value; int v_access; int * v_name; } ;
typedef TYPE_1__ value_t ;
typedef int file ;
typedef int FILE ;


 int ENVIRON ;
 size_t EXCEPTIONS ;
 int FILENAME_MAX ;
 int HOME ;
 int IREMOTE ;
 int PUBLIC ;
 int WRITE ;
 int * address (char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 char* getenv (int *) ;
 int printf (char*,char*) ;
 int setnumber (char*,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 char* value (int ) ;
 scalar_t__ vflag ;
 int vlex (char*) ;
 TYPE_1__* vtable ;

void
vinit(void)
{
 char file[FILENAME_MAX], *cp;
 value_t *p;
 FILE *fp;

 for (p = vtable; p->v_name != ((void*)0); p++) {
  if (p->v_type&ENVIRON)
   if ((cp = getenv(p->v_name)))
    p->v_value = cp;
  if (p->v_type&IREMOTE)
   setnumber(p->v_value, *address(p->v_value));
 }




 cp = value(HOME);
 if (cp == ((void*)0)) {
  (void)fprintf(stderr,
      "$HOME not set. Skipping check for ~/.tiprc\n");
 } else if (strlen(cp) + sizeof("/.tiprc") > sizeof(file)) {
  (void)fprintf(stderr, "Home directory path too long: %s\n",
      value(HOME));
 } else {
  snprintf(file, sizeof file, "%s/.tiprc", value(HOME));
  if ((fp = fopen(file, "r")) != ((void*)0)) {
   char *tp;

   while (fgets(file, sizeof(file)-1, fp) != ((void*)0)) {
    if (vflag)
     printf("set %s", file);
    if ((tp = strrchr(file, '\n')))
     *tp = '\0';
    vlex(file);
   }
   fclose(fp);
  }
 }



 vtable[EXCEPTIONS].v_access &= ~(WRITE<<PUBLIC);
}
