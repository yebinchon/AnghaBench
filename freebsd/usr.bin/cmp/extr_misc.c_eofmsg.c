
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIFF_EXIT ;
 int exit (int ) ;
 int sflag ;
 int warnx (char*,char const*) ;

void
eofmsg(const char *file)
{
 if (!sflag)
  warnx("EOF on %s", file);
 exit(DIFF_EXIT);
}
