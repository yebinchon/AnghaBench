
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TMPINNAME ;
 int TMPOUTNAME ;
 int TMPPATNAME ;
 int TMPREJNAME ;
 int exit (int) ;
 int toutkeep ;
 int trejkeep ;
 int unlink (int ) ;

void
my_exit(int status)
{
 unlink(TMPINNAME);
 if (!toutkeep)
  unlink(TMPOUTNAME);
 if (!trejkeep)
  unlink(TMPREJNAME);
 unlink(TMPPATNAME);
 exit(status);
}
