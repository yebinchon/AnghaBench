
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_bavail; int f_bsize; } ;
typedef int int64_t ;


 int LOG_ERR ;
 int minfree ;
 scalar_t__ statfs (char*,struct statfs*) ;
 int syslog (int ,char*,char*) ;

__attribute__((used)) static int
chksize(int size)
{
 int64_t spacefree;
 struct statfs sfb;

 if (statfs(".", &sfb) < 0) {
  syslog(LOG_ERR, "%s: %m", "statfs(\".\")");
  return (1);
 }
 spacefree = sfb.f_bavail * (sfb.f_bsize / 512);
 size = (size + 511) / 512;
 if (minfree + size > spacefree)
  return(0);
 return(1);
}
