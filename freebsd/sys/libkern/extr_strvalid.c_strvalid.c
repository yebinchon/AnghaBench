
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
strvalid(const char *buffer, size_t bufferlen)
{
 size_t i;


 for (i = 0; i < bufferlen; i++)
  if (buffer[i] == '\0')
   return (1);

 return (0);
}
