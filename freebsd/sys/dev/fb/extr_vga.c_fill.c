
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static void
fill(int val, void *d, size_t size)
{
    u_char *p = d;

    while (size-- > 0)
 *p++ = val;
}
