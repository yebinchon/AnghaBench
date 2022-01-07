
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
getindex(const char *words[], const char *word)
{
 int i = 0;

 while (words[i]) {
  if (strcmp(words[i], word) == 0)
   return (i);
  i++;
 }
 return (-1);
}
