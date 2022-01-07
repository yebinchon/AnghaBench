
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skip_blank_lines (char const*) ;
 char* strchrnul (char const*,char) ;

int find_commit_subject(const char *commit_buffer, const char **subject)
{
 const char *eol;
 const char *p = commit_buffer;

 while (*p && (*p != '\n' || p[1] != '\n'))
  p++;
 if (*p) {
  p = skip_blank_lines(p + 2);
  eol = strchrnul(p, '\n');
 } else
  eol = p;

 *subject = p;

 return eol - p;
}
