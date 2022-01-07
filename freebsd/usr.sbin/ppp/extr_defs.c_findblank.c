
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PARSE_NOHASH ;
 int PARSE_REDUCE ;
 scalar_t__ issep (char) ;
 int memmove (char*,char*,int ) ;
 int strlen (char*) ;

char *
findblank(char *p, int flags)
{
  int instring;

  instring = 0;
  while (*p) {
    if (*p == '\\') {
      if (flags & PARSE_REDUCE) {
        memmove(p, p + 1, strlen(p));
        if (!*p)
          break;
      } else
        p++;
    } else if (*p == '"') {
      memmove(p, p + 1, strlen(p));
      instring = !instring;
      continue;
    } else if (!instring && (issep(*p) ||
                             (*p == '#' && !(flags & PARSE_NOHASH))))
      return p;
    p++;
  }

  return instring ? ((void*)0) : p;
}
