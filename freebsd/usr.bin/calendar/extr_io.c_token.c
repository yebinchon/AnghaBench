
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int T_ERR ;
 int T_OK ;
 int T_PROCESS ;
 int cal_fopen (char*) ;
 scalar_t__ cal_parse (int ,int *) ;
 int * definitions ;
 int sl_add (int *,int ) ;
 int * sl_find (int *,char*) ;
 int * sl_init () ;
 int strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int trimlr (char**) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
token(char *line, FILE *out, bool *skip)
{
 char *walk, c, a;

 if (strncmp(line, "endif", 5) == 0) {
  *skip = 0;
  return (T_OK);
 }

 if (*skip)
  return (T_OK);

 if (strncmp(line, "include", 7) == 0) {
  walk = line + 7;

  trimlr(&walk);

  if (*walk == '\0') {
   warnx("Expecting arguments after #include");
   return (T_ERR);
  }

  if (*walk != '<' && *walk != '\"') {
   warnx("Excecting '<' or '\"' after #include");
   return (T_ERR);
  }

  a = *walk;
  walk++;
  c = walk[strlen(walk) - 1];

  switch(c) {
  case '>':
   if (a != '<') {
    warnx("Unterminated include expecting '\"'");
    return (T_ERR);
   }
   break;
  case '\"':
   if (a != '\"') {
    warnx("Unterminated include expecting '>'");
    return (T_ERR);
   }
   break;
  default:
   warnx("Unterminated include expecting '%c'",
       a == '<' ? '>' : '\"' );
   return (T_ERR);
  }
  walk[strlen(walk) - 1] = '\0';

  if (cal_parse(cal_fopen(walk), out))
   return (T_ERR);

  return (T_OK);
 }

 if (strncmp(line, "define", 6) == 0) {
  if (definitions == ((void*)0))
   definitions = sl_init();
  walk = line + 6;
  trimlr(&walk);

  if (*walk == '\0') {
   warnx("Expecting arguments after #define");
   return (T_ERR);
  }

  sl_add(definitions, strdup(walk));
  return (T_OK);
 }

 if (strncmp(line, "ifndef", 6) == 0) {
  walk = line + 6;
  trimlr(&walk);

  if (*walk == '\0') {
   warnx("Expecting arguments after #ifndef");
   return (T_ERR);
  }

  if (definitions != ((void*)0) && sl_find(definitions, walk) != ((void*)0))
   *skip = 1;

  return (T_OK);
 }

 return (T_PROCESS);

}
