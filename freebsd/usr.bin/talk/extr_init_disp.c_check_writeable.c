
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int STDERR_FILENO ;
 int S_IWGRP ;
 int err (int,char*,...) ;
 int errx (int,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* ttyname (int ) ;

void
check_writeable(void)
{
 char *tty;
 struct stat sb;

 if ((tty = ttyname(STDERR_FILENO)) == ((void*)0))
  err(1, "ttyname");
 if (stat(tty, &sb) < 0)
  err(1, "%s", tty);
 if (!(sb.st_mode & S_IWGRP))
  errx(1, "The callee cannot write to this terminal, use \"mesg y\".");
}
