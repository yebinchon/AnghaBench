
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static int
vt_parse_rgb_triplet(const char *rgb, unsigned char *r,
    unsigned char *g, unsigned char *b)
{
 unsigned long v;
 const char *ptr;
 char *endptr;

 ptr = rgb;


 if (*ptr == '#') {
  if (strlen(ptr) != 7)
   return (-1);
  v = strtoul(ptr + 1, &endptr, 16);
  if (*endptr != '\0')
   return (-1);

  *r = (v >> 16) & 0xff;
  *g = (v >> 8) & 0xff;
  *b = v & 0xff;

  return (0);
 }


 v = strtoul(ptr, &endptr, 10);
 if (ptr == endptr)
  return (-1);
 if (v > 255)
  return (-1);
 *r = v & 0xff;
 ptr = endptr;


 while (*ptr == ',' || *ptr == ' ')
  ptr++;

 v = strtoul(ptr, &endptr, 10);
 if (ptr == endptr)
  return (-1);
 if (v > 255)
  return (-1);
 *g = v & 0xff;
 ptr = endptr;


 while (*ptr == ',' || *ptr == ' ')
  ptr++;

 v = strtoul(ptr, &endptr, 10);
 if (ptr == endptr)
  return (-1);
 if (v > 255)
  return (-1);
 *b = v & 0xff;
 ptr = endptr;


 while (*ptr == ' ')
  ptr++;


 if (*ptr != 0)
  return (-1);

 return (0);
}
