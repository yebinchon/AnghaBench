
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char int8_t ;



__attribute__((used)) static void
bpack(int8_t *src, int8_t *dst, int len)
{
    int i, j, blank;
    int8_t *ptr, *buf = dst;

    for (i = j = blank = 0 ; i < len; i++) {
 if (blank && src[i] == ' ')
     continue;
 if (blank && src[i] != ' ') {
     dst[j++] = src[i];
     blank = 0;
     continue;
 }
 if (src[i] == ' ') {
     blank = 1;
     if (i == 0)
  continue;
 }
 dst[j++] = src[i];
    }
    if (j < len)
 dst[j] = 0x00;
    for (ptr = buf; ptr < buf+len; ++ptr)
 if (!*ptr)
     *ptr = ' ';
    for (ptr = buf + len - 1; ptr >= buf && *ptr == ' '; --ptr)
        *ptr = 0;
}
