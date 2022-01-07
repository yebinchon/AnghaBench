
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int fname ;
 int isspace (unsigned char) ;
 int linenum ;
 char* malloc (size_t) ;
 char* memmove (char*,char*,size_t) ;
 int warnx (char*,int ,int ,char const*) ;

__attribute__((used)) static char *
duptoeol(char *s, const char *ctype)
{
 size_t len;
 int ws;
 char *p, *start;

 ws = 0;
 for (start = s; *s != '\0' && *s != '\n'; ++s)
  ws = isspace((unsigned char)*s);
 *s = '\0';
 if (ws)
  warnx("%lu: %s: whitespace after %s", linenum, fname, ctype);
 len = s - start + 1;
 if ((p = malloc(len)) == ((void*)0))
  err(1, "malloc");
 return (memmove(p, start, len));
}
