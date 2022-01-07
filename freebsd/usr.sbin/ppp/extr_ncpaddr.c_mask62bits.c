
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct in6_addr {int dummy; } ;



__attribute__((used)) static int
mask62bits(const struct in6_addr *mask)
{
  const u_char masks[] = { 0x00, 0x80, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc, 0xfe };
  const u_char *c, *p, *end;
  int masklen, m;

  p = (const u_char *)mask;
  for (masklen = 0, end = p + 16; p < end && *p == 0xff; p++)
    masklen += 8;

  if (p < end) {
    for (c = masks, m = 0; c < masks + sizeof masks; c++, m++)
      if (*c == *p) {
        masklen += m;
        break;
      }
  }

  return masklen;
}
