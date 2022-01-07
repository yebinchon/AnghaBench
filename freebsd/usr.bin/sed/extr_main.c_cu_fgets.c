
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int string_ident ;
struct TYPE_2__ {char* s; struct TYPE_2__* next; int type; } ;
typedef int FILE ;




 int __unreachable () ;
 int err (int,char*,char*) ;
 int fclose (int *) ;
 int feof (int *) ;
 char* fgets (char*,int,int *) ;
 char* fname ;
 int * fopen (char*,char*) ;
 int linenum ;
 int nflag ;
 TYPE_1__* script ;
 int snprintf (char*,int,char*,char*) ;
 int strcpy (int ,char*) ;

char *
cu_fgets(char *buf, int n, int *more)
{
 static enum {ST_EOF, ST_FILE, ST_STRING} state = ST_EOF;
 static FILE *f;
 static char *s;
 static char string_ident[30];
 char *p;

again:
 switch (state) {
 case ST_EOF:
  if (script == ((void*)0)) {
   if (more != ((void*)0))
    *more = 0;
   return (((void*)0));
  }
  linenum = 0;
  switch (script->type) {
  case 129:
   if ((f = fopen(script->s, "r")) == ((void*)0))
    err(1, "%s", script->s);
   fname = script->s;
   state = ST_FILE;
   goto again;
  case 128:
   if (((size_t)snprintf(string_ident,
       sizeof(string_ident), "\"%s\"", script->s)) >=
       sizeof(string_ident) - 1)
    (void)strcpy(string_ident +
        sizeof(string_ident) - 6, " ...\"");
   fname = string_ident;
   s = script->s;
   state = ST_STRING;
   goto again;
  default:
   __unreachable();
  }
 case ST_FILE:
  if ((p = fgets(buf, n, f)) != ((void*)0)) {
   linenum++;
   if (linenum == 1 && buf[0] == '#' && buf[1] == 'n')
    nflag = 1;
   if (more != ((void*)0))
    *more = !feof(f);
   return (p);
  }
  script = script->next;
  (void)fclose(f);
  state = ST_EOF;
  goto again;
 case ST_STRING:
  if (linenum == 0 && s[0] == '#' && s[1] == 'n')
   nflag = 1;
  p = buf;
  for (;;) {
   if (n-- <= 1) {
    *p = '\0';
    linenum++;
    if (more != ((void*)0))
     *more = 1;
    return (buf);
   }
   switch (*s) {
   case '\0':
    state = ST_EOF;
    if (s == script->s) {
     script = script->next;
     goto again;
    } else {
     script = script->next;
     *p = '\0';
     linenum++;
     if (more != ((void*)0))
      *more = 0;
     return (buf);
    }
   case '\n':
    *p++ = '\n';
    *p = '\0';
    s++;
    linenum++;
    if (more != ((void*)0))
     *more = 0;
    return (buf);
   default:
    *p++ = *s++;
   }
  }
 }

 return (((void*)0));
}
