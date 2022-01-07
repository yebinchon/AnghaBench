
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigitch (int ) ;

__attribute__((used)) static int
isnumberstr(const char *string)
{
 while (*string) {
  if (!isdigitch(*string++))
   return (0);
 }
 return (1);
}
