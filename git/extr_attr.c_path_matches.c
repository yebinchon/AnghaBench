
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern {char* pattern; int nowildcardlen; int flags; int patternlen; } ;


 int PATTERN_FLAG_MUSTBEDIR ;
 int PATTERN_FLAG_NODIR ;
 int match_basename (char const*,int,char const*,int,int ,int) ;
 int match_pathname (char const*,int,char const*,int,char const*,int,int ,int) ;

__attribute__((used)) static int path_matches(const char *pathname, int pathlen,
   int basename_offset,
   const struct pattern *pat,
   const char *base, int baselen)
{
 const char *pattern = pat->pattern;
 int prefix = pat->nowildcardlen;
 int isdir = (pathlen && pathname[pathlen - 1] == '/');

 if ((pat->flags & PATTERN_FLAG_MUSTBEDIR) && !isdir)
  return 0;

 if (pat->flags & PATTERN_FLAG_NODIR) {
  return match_basename(pathname + basename_offset,
          pathlen - basename_offset - isdir,
          pattern, prefix,
          pat->patternlen, pat->flags);
 }
 return match_pathname(pathname, pathlen - isdir,
         base, baselen,
         pattern, prefix, pat->patternlen, pat->flags);
}
