
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,int *) ;
 int errx (int,char*,char*) ;
 char* malloc (size_t) ;
 int memmove (char*,char*,size_t) ;
 int strcmp (char*,char*) ;
 size_t strlen (char*) ;
 size_t strspn (char*,char*) ;
 int usage () ;
 int warnx (char*) ;

__attribute__((used)) static void
obsolete(char **argv)
{
 size_t len;
 char **p, *ap, *t;

 while ((ap = *++argv) != ((void*)0)) {

  if (ap[0] == '-' && ap[1] == '-')
   return;

  if (ap[0] != '-')
   continue;
  switch (ap[1]) {
  case 'a':
   if (ap[2] == '\0' && (argv[1] == ((void*)0) ||
       (strcmp(argv[1], "1") != 0 &&
       strcmp(argv[1], "2") != 0))) {
    ap[1] = '\01';
    warnx("-a option used without an argument; "
        "reverting to historical behavior");
   }
   break;
  case 'j':





   switch(ap[2]) {
   case '1':
    if (ap[3] != '\0')
     goto jbad;
    ap[1] = '1';
    ap[2] = '\0';
    break;
   case '2':
    if (ap[3] != '\0')
     goto jbad;
    ap[1] = '2';
    ap[2] = '\0';
    break;
   case '\0':
    break;
   default:
jbad: errx(1, "illegal option -- %s", ap);
    usage();
   }
   break;
  case 'o':




   if (ap[2] != '\0')
    break;
   for (p = argv + 2; *p; ++p) {
    if (p[0][0] == '0' || ((p[0][0] != '1' &&
        p[0][0] != '2') || p[0][1] != '.'))
     break;
    len = strlen(*p);
    if (len - 2 != strspn(*p + 2, "0123456789"))
     break;
    if ((t = malloc(len + 3)) == ((void*)0))
     err(1, ((void*)0));
    t[0] = '-';
    t[1] = 'o';
    memmove(t + 2, *p, len + 1);
    *p = t;
   }
   argv = p - 1;
   break;
  }
 }
}
