
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 int strspn (char const*,char const*) ;

__attribute__((used)) static int scan_hunk_header(const char *p, int *p_before, int *p_after)
{
 static const char digits[] = "0123456789";
 const char *q, *r;
 int n;

 q = p + 4;
 n = strspn(q, digits);
 if (q[n] == ',') {
  q += n + 1;
  n = strspn(q, digits);
 }
 if (n == 0 || q[n] != ' ' || q[n+1] != '+')
  return 0;

 r = q + n + 2;
 n = strspn(r, digits);
 if (r[n] == ',') {
  r += n + 1;
  n = strspn(r, digits);
 }
 if (n == 0)
  return 0;

 *p_before = atoi(q);
 *p_after = atoi(r);
 return 1;
}
