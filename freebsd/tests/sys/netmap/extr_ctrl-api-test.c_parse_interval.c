
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int isdigit (char const) ;
 int stderr ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static int
parse_interval(const char *arg, int *j, int *k)
{
 const char *scan = arg;
 char *rest;

 *j = 0;
 *k = -1;
 if (*scan == '-') {
  scan++;
  goto get_k;
 }
 if (!isdigit(*scan))
  goto err;
 *k = strtol(scan, &rest, 10);
 *j = *k - 1;
 scan = rest;
 if (*scan == '-') {
  *k = -1;
  scan++;
 }
get_k:
 if (*scan == '\0')
  return 0;
 if (!isdigit(*scan))
  goto err;
 *k = strtol(scan, &rest, 10);
 scan = rest;
 if (!(*scan == '\0'))
  goto err;

 return 0;

err:
 fprintf(stderr, "syntax error in '%s', must be num[-[num]] or -[num]\n", arg);
 return -1;
}
