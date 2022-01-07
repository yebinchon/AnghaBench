
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle {int unit; } ;


 int ID0unlink (char*) ;
 int PATH_MAX ;
 char* _PATH_VARRUN ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static void
bundle_UnlockTun(struct bundle *bundle)
{
  char pidfile[PATH_MAX];

  snprintf(pidfile, sizeof pidfile, "%stun%d.pid", _PATH_VARRUN, bundle->unit);
  ID0unlink(pidfile);
}
