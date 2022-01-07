
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,int *) ;
 int isdigit (char) ;
 char* malloc (scalar_t__) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
obsolete(char *argv[])
{
 char *ap;

 while ((ap = *++argv)) {

  if (ap[0] != '-' || ap[1] == '-' || !isdigit(ap[1]))
   return;
  if ((ap = malloc(strlen(*argv) + 2)) == ((void*)0))
   err(1, ((void*)0));
  ap[0] = '-';
  ap[1] = 'n';
  (void)strcpy(ap + 2, *argv + 1);
  *argv = ap;
 }
}
