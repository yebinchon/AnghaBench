
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (char*,char*,int) ;
 int err (int,char*) ;
 void* malloc (int) ;
 char** realloc (char**,int) ;
 int warnx (char*) ;

char **
colon(char **dbv, char *path, char *dot)
{
 int vlen, slen;
 char *c, *ch, *p;
 char **pv;

 if (dbv == ((void*)0)) {
  if ((dbv = malloc(sizeof(char *))) == ((void*)0))
   err(1, "malloc");
  *dbv = ((void*)0);
 }


 if (*path == '\0') {
  warnx("empty database name, ignored");
  return(dbv);
 }


 for(vlen = 0, pv = dbv; *pv != ((void*)0); pv++, vlen++);

 for (ch = c = path; ; ch++) {
  if (*ch == ':' ||
      (!*ch && !(*(ch - 1) == ':' && ch == 1+ path))) {

   if (ch == c)
    p = dot;
   else {

    slen = ch - c;
    if ((p = malloc(sizeof(char) * (slen + 1)))
        == ((void*)0))
     err(1, "malloc");
    bcopy(c, p, slen);
    *(p + slen) = '\0';
   }

   if ((dbv = realloc(dbv, sizeof(char *) * (vlen + 2)))
       == ((void*)0))
    err(1, "realloc");
   *(dbv + vlen) = p;
   *(dbv + ++vlen) = ((void*)0);
   c = ch + 1;
  }
  if (*ch == '\0')
   break;
 }
 return (dbv);
}
