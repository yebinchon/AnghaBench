
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (char const*,char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *
resource_string_copy(const char *s, int len)
{
 static char stringbuf[256];
 static int offset = 0;
 const char *ret;

 if (len == 0)
  len = strlen(s);
 if (len > 255)
  return ((void*)0);
 if ((offset + len + 1) > 255)
  offset = 0;
 bcopy(s, &stringbuf[offset], len);
 stringbuf[offset + len] = '\0';
 ret = &stringbuf[offset];
 offset += len + 1;
 return ret;
}
