
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,long) ;

const char *
NumStr(long val, char *buf, size_t sz)
{
  static char result[23];

  if (buf == ((void*)0) || sz == 0) {
    buf = result;
    sz = sizeof result;
  }
  snprintf(buf, sz, "<%ld>", val);
  return buf;
}
