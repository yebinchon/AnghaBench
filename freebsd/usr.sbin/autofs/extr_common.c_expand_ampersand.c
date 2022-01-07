
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,int,char*,char const*,char*) ;
 int assert (int) ;
 char* checked_strdup (char*) ;
 int log_err (int,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
expand_ampersand(char *string, const char *key)
{
 char c, *expanded;
 int i, ret, before_len = 0;
 bool backslashed = 0;

 assert(key[0] != '\0');

 expanded = checked_strdup(string);

 for (i = 0; string[i] != '\0'; i++) {
  c = string[i];
  if (c == '\\' && backslashed == 0) {
   backslashed = 1;
   continue;
  }
  if (backslashed) {
   backslashed = 0;
   continue;
  }
  backslashed = 0;
  if (c != '&')
   continue;





  before_len = i;


  ret = asprintf(&expanded, "%.*s%s%s",
      before_len, string, key, string + before_len + 1);
  if (ret < 0)
   log_err(1, "asprintf");







  string = expanded;
  i = before_len + strlen(key);
  if (i == (int)strlen(string))
   break;
  backslashed = 0;

 }

 return (expanded);
}
