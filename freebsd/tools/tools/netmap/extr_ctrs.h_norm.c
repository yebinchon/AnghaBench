
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* norm2 (char*,double,char*,int) ;

__attribute__((used)) static __inline const char *
norm(char *buf, double val, int normalize)
{
 if (normalize)
  return norm2(buf, val, "%.3f %s", normalize);
 else
  return norm2(buf, val, "%.0f %s", normalize);
}
