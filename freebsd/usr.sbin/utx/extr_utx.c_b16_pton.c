
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isxdigit (unsigned char) ;
 int sscanf (char const*,char*,char*) ;

__attribute__((used)) static int
b16_pton(const char *in, char *out, size_t len)
{
 size_t i;

 for (i = 0; i < len * 2; i++)
  if (!isxdigit((unsigned char)in[i]))
   return (1);
 for (i = 0; i < len; i++)
  sscanf(&in[i * 2], "%02hhx", &out[i]);
 return (0);
}
