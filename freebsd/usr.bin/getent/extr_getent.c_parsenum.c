
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 unsigned long ULONG_MAX ;
 int assert (int ) ;
 scalar_t__ errno ;
 int isdigit (unsigned char) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static int
parsenum(const char *word, unsigned long *result)
{
 unsigned long num;
 char *ep;

 assert(word != ((void*)0));
 assert(result != ((void*)0));

 if (!isdigit((unsigned char)word[0]))
  return 0;
 errno = 0;
 num = strtoul(word, &ep, 10);
 if (num == ULONG_MAX && errno == ERANGE)
  return 0;
 if (*ep != '\0')
  return 0;
 *result = num;
 return 1;
}
