
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sort { ____Placeholder_sort } sort ;


 int HEAP ;
 int INVALID_ALG ;
 int MERGE ;
 int QUICK ;
 int WIKI ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static enum sort
parse_alg(char *alg)
{
 if (strcmp(alg, "merge") == 0)
  return MERGE;




 else if (strcmp(alg, "quick") == 0)
  return QUICK;
 else if (strcmp(alg, "heap") == 0)
  return HEAP;
 else
  return INVALID_ALG;
}
