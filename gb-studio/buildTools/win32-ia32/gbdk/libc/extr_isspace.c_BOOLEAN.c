
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;



BOOLEAN isspace(char c)
{
  if(c == ' ' || c == '\t' || c == '\n')
    return 1;
  else
    return 0;
}
