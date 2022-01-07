
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static const char *
getblksiz(int bs)
{
 static char buf[25];
 if (bs == 0)
  return "variable";
 else {
  sprintf(buf, "%d bytes", bs);
  return buf;
 }
}
