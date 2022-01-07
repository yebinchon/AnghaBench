
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncasecmp (char const* const,char*,int) ;

__attribute__((used)) static int
arghidden(char const *const *argv, int n)
{




  if (n == 2 && !strncasecmp(argv[0], "se", 2) &&
      (!strncasecmp(argv[1], "authk", 5) || !strncasecmp(argv[1], "ke", 2)))
    return 1;


  if (n == 1 && !strncasecmp(argv[0], "p", 1))
    return 1;


  if (n == 3 && !strncasecmp(argv[0], "se", 2) &&
      !strncasecmp(argv[1], "se", 2))
    return 1;

  return 0;
}
