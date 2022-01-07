
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int isdigit (unsigned char) ;
 char* malloc (int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
obsolete(char *argv[])
{
 int len;
 char *ap, *p, *start;

 while ((ap = *++argv)) {

  if (ap[0] != '-') {
   if (ap[0] != '+')
    return;
  } else if (ap[1] == '-')
   return;
  if (!isdigit((unsigned char)ap[1]))
   continue;




  len = strlen(ap);
  if ((start = p = malloc(len + 3)) == ((void*)0))
   err(1, "malloc");
  *p++ = '-';
  *p++ = ap[0] == '+' ? 's' : 'f';
  (void)strcpy(p, ap + 1);
  *argv = start;
 }
}
