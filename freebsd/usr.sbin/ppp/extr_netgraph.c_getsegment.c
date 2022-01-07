
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LogWARN ;
 int log_Printf (int ,char*,char const*,...) ;
 size_t strcspn (char const*,char const*) ;
 int strncpy (char*,char const*,size_t) ;
 int strspn (char const*,char const*) ;

__attribute__((used)) static int
getsegment(const char *what, char *word, size_t sz, const char *from,
           const char *sep, const char **endp)
{
  size_t len;

  if ((len = strcspn(from, sep)) == 0) {
    log_Printf(LogWARN, "%s name should not be empty !\n", what);
    return 0;
  }

  if (len >= sz) {
    log_Printf(LogWARN, "%s name too long, max %d !\n", what, sz - 1);
    return 0;
  }

  strncpy(word, from, len);
  word[len] = '\0';

  *endp = from + len;
  *endp += strspn(*endp, sep);

  return 1;
}
