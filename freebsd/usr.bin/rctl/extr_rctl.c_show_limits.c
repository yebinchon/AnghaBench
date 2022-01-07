
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOSYS ;
 scalar_t__ ERANGE ;
 int RCTL_DEFAULT_BUFSIZE ;
 int enosys () ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int free (char*) ;
 int print_rules (char*,int,int) ;
 int rctl_get_limits (char const*,scalar_t__,char*,size_t) ;
 char* realloc (char*,size_t) ;
 scalar_t__ strlen (char const*) ;
 int warn (char*,char const*) ;

__attribute__((used)) static int
show_limits(const char *filter, const char *unexpanded_rule,
    int hflag, int nflag)
{
 int error;
 char *outbuf = ((void*)0);
 size_t outbuflen = RCTL_DEFAULT_BUFSIZE / 4;

 for (;;) {
  outbuflen *= 4;
  outbuf = realloc(outbuf, outbuflen);
  if (outbuf == ((void*)0))
   err(1, "realloc");
  error = rctl_get_limits(filter, strlen(filter) + 1,
      outbuf, outbuflen);
  if (error == 0)
   break;
  if (errno == ERANGE)
   continue;
  if (errno == ENOSYS)
   enosys();
  warn("failed to get limits for '%s'", unexpanded_rule);
  free(outbuf);

  return (error);
 }

 print_rules(outbuf, hflag, nflag);
 free(outbuf);

 return (error);
}
