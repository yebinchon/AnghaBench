
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* strtoul (char const*,char**,int ) ;

__attribute__((used)) static int
get_pm_page_spec(const char *s, unsigned int *page_size,
    unsigned int *num_pages)
{
 char *p;
 unsigned long val;

 val = strtoul(s, &p, 0);
 if (p == s) return -1;
 if (*p == 'x' && p[1]) {
  *num_pages = val;
  *page_size = strtoul(p + 1, &p, 0);
 } else {
  *num_pages = -1;
  *page_size = val;
 }
 *page_size <<= 10;
 return *p;
}
