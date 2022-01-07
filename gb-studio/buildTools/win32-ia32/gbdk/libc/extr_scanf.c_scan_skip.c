
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;


 int gets (char*) ;
 scalar_t__ isspace (char) ;

__attribute__((used)) static UINT8 scan_skip(char *s, UINT8 i)
{
oncemore:
  while(isspace(s[i]))
    i++;
  if(s[i] == 0) {
    gets(s);
    i = 0;
    goto oncemore;
  }
  return i;
}
