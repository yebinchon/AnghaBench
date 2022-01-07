
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 int close (int) ;
 int err (int ,char*,char*) ;
 int mkstemp (char*) ;
 int unlink (char*) ;

__attribute__((used)) static char *
quiet_mktemp(char *template)
{
 int fd;

 if ((fd = mkstemp(template)) == -1)
  return (((void*)0));
 close (fd);
 if (unlink(template) == -1)
  err(EX_OSERR, "unlink %s", template);
 return (template);
}
