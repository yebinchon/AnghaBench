
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int pbchar ;

__attribute__((used)) static int32_t
tungetc(int c)
{

 if (pbchar != -1)
  return (-1);

 pbchar = c;
 return (1);
}
