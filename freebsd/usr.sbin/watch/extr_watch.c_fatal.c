
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*,char const*) ;
 int exit (int) ;
 int unset_tty () ;

__attribute__((used)) static void
fatal(int error, const char *buf)
{

 unset_tty();
 if (buf)
  errx(error, "fatal: %s", buf);
 else
  exit(error);
}
