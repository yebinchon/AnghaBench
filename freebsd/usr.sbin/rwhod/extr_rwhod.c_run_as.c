
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_uid; } ;
struct group {int gr_gid; } ;
typedef int gid_t ;


 int LOG_ERR ;
 int UNPRIV_GROUP ;
 int UNPRIV_USER ;
 int exit (int) ;
 struct group* getgrnam (int ) ;
 struct passwd* getpwnam (int ) ;
 int syslog (int ,char*,int ) ;

void
run_as(uid_t *uid, gid_t *gid)
{
 struct passwd *pw;
 struct group *gr;

 pw = getpwnam(UNPRIV_USER);
 if (pw == ((void*)0)) {
  syslog(LOG_ERR, "getpwnam(%s): %m", UNPRIV_USER);
  exit(1);
 }
 *uid = pw->pw_uid;

 gr = getgrnam(UNPRIV_GROUP);
 if (gr == ((void*)0)) {
  syslog(LOG_ERR, "getgrnam(%s): %m", UNPRIV_GROUP);
  exit(1);
 }
 *gid = gr->gr_gid;
}
