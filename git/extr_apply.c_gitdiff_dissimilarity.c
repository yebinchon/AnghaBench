
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {unsigned long score; } ;
struct gitdiff_data {int dummy; } ;


 unsigned long strtoul (char const*,int *,int) ;

__attribute__((used)) static int gitdiff_dissimilarity(struct gitdiff_data *state,
     const char *line,
     struct patch *patch)
{
 unsigned long val = strtoul(line, ((void*)0), 10);
 if (val <= 100)
  patch->score = val;
 return 0;
}
