
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PARSE_NOHASH ;
 char* findblank (char*,int) ;
 int strspn (char*,char*) ;

int
MakeArgs(char *script, char **pvect, int maxargs, int flags)
{
  int nargs;

  nargs = 0;
  while (*script) {
    script += strspn(script, " \t");
    if (*script == '#' && !(flags & PARSE_NOHASH)) {
      *script = '\0';
      break;
    }
    if (*script) {
      if (nargs >= maxargs - 1)
        break;
      *pvect++ = script;
      nargs++;
      script = findblank(script, flags);
      if (script == ((void*)0))
        return -1;
      else if (!(flags & PARSE_NOHASH) && *script == '#')
        *script = '\0';
      else if (*script)
        *script++ = '\0';
    }
  }
  *pvect = ((void*)0);
  return nargs;
}
