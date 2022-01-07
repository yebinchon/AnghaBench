
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
swab(char *buf, size_t bufsz)
{
 int i;
 char ch;

 for (i = 0; i < bufsz; i += 2) {
  ch = buf[i];
  buf[i] = buf[i + 1];
  buf[i + 1] = ch;
 }
}
