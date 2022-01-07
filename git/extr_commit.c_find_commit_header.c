
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchrnul (char const*,char) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

const char *find_commit_header(const char *msg, const char *key, size_t *out_len)
{
 int key_len = strlen(key);
 const char *line = msg;

 while (line) {
  const char *eol = strchrnul(line, '\n');

  if (line == eol)
   return ((void*)0);

  if (eol - line > key_len &&
      !strncmp(line, key, key_len) &&
      line[key_len] == ' ') {
   *out_len = eol - line - key_len - 1;
   return line + key_len + 1;
  }
  line = *eol ? eol + 1 : ((void*)0);
 }
 return ((void*)0);
}
