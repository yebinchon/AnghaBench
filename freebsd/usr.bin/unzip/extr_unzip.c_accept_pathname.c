
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STAILQ_EMPTY (int *) ;
 int exclude ;
 int include ;
 scalar_t__ match_pattern (int *,char const*) ;

__attribute__((used)) static int
accept_pathname(const char *pathname)
{

 if (!STAILQ_EMPTY(&include) && !match_pattern(&include, pathname))
  return (0);
 if (!STAILQ_EMPTY(&exclude) && match_pattern(&exclude, pathname))
  return (0);
 return (1);
}
