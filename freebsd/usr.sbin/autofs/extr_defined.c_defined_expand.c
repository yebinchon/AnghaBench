
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,int,char const*,char const*,char const*) ;
 int assert (int) ;
 char* checked_strdup (char const*) ;
 char* defined_find (char*) ;
 int free (char*) ;
 scalar_t__ isalnum (char) ;
 int log_err (int,char*) ;
 int log_warnx (char*,...) ;
 int strlen (char const*) ;
 char* strndup (char const*,int) ;

char *
defined_expand(const char *string)
{
 const char *value;
 char c, *expanded, *name;
 int i, ret, before_len = 0, name_off = 0, name_len = 0, after_off = 0;
 bool backslashed = 0, bracketed = 0;

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
  if (c != '$')
   continue;





  before_len = i;
  assert(i + 1 < (int)strlen(string));
  if (string[i + 1] == '{')
   bracketed = 1;

  if (string[i + 1] == '\0') {
   log_warnx("truncated variable");
   return (((void*)0));
  }




  i++;

  if (bracketed) {
   if (string[i + 1] == '\0') {
    log_warnx("truncated variable");
    return (((void*)0));
   }




   i++;
  }






  name_off = i;

  for (; string[i] != '\0'; i++) {
   c = string[i];




   if (isalnum(c) || c == '_')
    continue;




   if (bracketed) {
    if (c != '}')
     continue;






    after_off = i + 1;
    assert(i > 1);
    assert(i - 1 > name_off);
    name_len = i - name_off;
    break;
   }

   after_off = i;
   assert(i > 1);
   assert(i > name_off);
   name_len = i - name_off;
   break;
  }

  name = strndup(string + name_off, name_len);
  if (name == ((void*)0))
   log_err(1, "strndup");
  value = defined_find(name);
  if (value == ((void*)0)) {
   log_warnx("undefined variable ${%s}", name);
   return (((void*)0));
  }




  ret = asprintf(&expanded, "%.*s%s%s",
      before_len, string, value, string + after_off);
  if (ret < 0)
   log_err(1, "asprintf");


  free(name);




  string = expanded;
  i = before_len + strlen(value);
  backslashed = bracketed = 0;
  before_len = name_off = name_len = after_off = 0;
  assert(i <= (int)strlen(string));
 }

 if (before_len != 0 || name_off != 0 || name_len != 0 || after_off != 0) {
  log_warnx("truncated variable");
  return (((void*)0));
 }

 return (expanded);
}
