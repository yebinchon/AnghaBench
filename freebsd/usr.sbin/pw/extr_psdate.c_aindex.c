
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (int ) ;
 int strncpy (char*,char const*,int) ;
 scalar_t__ tolower (unsigned char) ;

__attribute__((used)) static int
aindex(char const * arr[], char const ** str, int len)
{
 int l, i;
 char mystr[32];

 mystr[len] = '\0';
 l = strlen(strncpy(mystr, *str, len));
 for (i = 0; i < l; i++)
  mystr[i] = (char) tolower((unsigned char)mystr[i]);
 for (i = 0; arr[i] && strcmp(mystr, arr[i]) != 0; i++);
 if (arr[i] == ((void*)0))
  i = -1;
 else {
  while (**str && isalpha((unsigned char)**str))
   ++(*str);

  while (**str && (**str == ',' || isspace((unsigned char)**str)))
   ++(*str);
 }
 return i;
}
