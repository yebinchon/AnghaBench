
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memmem (char const*,int,char const*,int) ;
 char* strchrnul (char*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *find_encoding(const char *begin, const char *end)
{
 const char *needle = "\nencoding ";
 char *bol, *eol;

 bol = memmem(begin, end ? end - begin : strlen(begin),
       needle, strlen(needle));
 if (!bol)
  return ((void*)0);
 bol += strlen(needle);
 eol = strchrnul(bol, '\n');
 *eol = '\0';
 return bol;
}
