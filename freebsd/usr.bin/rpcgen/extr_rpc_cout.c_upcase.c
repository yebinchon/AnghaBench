
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;
 int toupper (int ) ;
 scalar_t__ xmalloc (scalar_t__) ;

char *
upcase(const char *str)
{
 char *ptr, *hptr;

 ptr = (char *)xmalloc(strlen(str)+1);

 hptr = ptr;
 while (*str != '\0')
  *ptr++ = toupper(*str++);

 *ptr = '\0';
 return (hptr);
}
