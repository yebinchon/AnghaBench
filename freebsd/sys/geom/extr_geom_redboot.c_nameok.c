
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isprint (char const) ;

__attribute__((used)) static int
nameok(const char name[16])
{
 int i;


 for (i = 0; i < 15; i++)
  if (!isprint(name[i]))
   break;
 return (name[i] == '\0');
}
