
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die (int ) ;
 scalar_t__ is_dir_sep (char const) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ isspace (char const) ;
 int * memchr (char const*,char,int) ;
 int strip_suffix_mem (char const*,size_t*,char*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;
 char* strstr (char const*,char*) ;
 char* xstrfmt (char*,int,char const*) ;
 char* xstrndup (char const*,size_t) ;

__attribute__((used)) static char *guess_dir_name(const char *repo, int is_bundle, int is_bare)
{
 const char *end = repo + strlen(repo), *start, *ptr;
 size_t len;
 char *dir;




 start = strstr(repo, "://");
 if (start == ((void*)0))
  start = repo;
 else
  start += 3;






 for (ptr = start; ptr < end && !is_dir_sep(*ptr); ptr++) {
  if (*ptr == '@')
   start = ptr + 1;
 }




 while (start < end && (is_dir_sep(end[-1]) || isspace(end[-1])))
  end--;
 if (end - start > 5 && is_dir_sep(end[-5]) &&
     !strncmp(end - 4, ".git", 4)) {
  end -= 5;
  while (start < end && is_dir_sep(end[-1]))
   end--;
 }
 if (memchr(start, '/', end - start) == ((void*)0)
     && memchr(start, ':', end - start) != ((void*)0)) {
  ptr = end;
  while (start < ptr && isdigit(ptr[-1]) && ptr[-1] != ':')
   ptr--;
  if (start < ptr && ptr[-1] == ':')
   end = ptr - 1;
 }







 ptr = end;
 while (start < ptr && !is_dir_sep(ptr[-1]) && ptr[-1] != ':')
  ptr--;
 start = ptr;




 len = end - start;
 strip_suffix_mem(start, &len, is_bundle ? ".bundle" : ".git");

 if (!len || (len == 1 && *start == '/'))
  die(_("No directory name could be guessed.\n"
        "Please specify a directory on the command line"));

 if (is_bare)
  dir = xstrfmt("%.*s.git", (int)len, start);
 else
  dir = xstrndup(start, len);




 if (*dir) {
  char *out = dir;
  int prev_space = 1 ;
  for (end = dir; *end; ++end) {
   char ch = *end;
   if ((unsigned char)ch < '\x20')
    ch = '\x20';
   if (isspace(ch)) {
    if (prev_space)
     continue;
    prev_space = 1;
   } else
    prev_space = 0;
   *out++ = ch;
  }
  *out = '\0';
  if (out > dir && prev_space)
   out[-1] = '\0';
 }
 return dir;
}
