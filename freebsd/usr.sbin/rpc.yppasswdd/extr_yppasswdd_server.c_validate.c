
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct x_passwd {char* pw_name; int pw_passwd; int pw_gecos; int pw_shell; scalar_t__ pw_gid; scalar_t__ pw_uid; } ;
struct passwd {scalar_t__ pw_uid; scalar_t__ pw_gid; int pw_name; } ;
typedef scalar_t__ gid_t ;


 int no_chsh ;
 int ok_shell (int ) ;
 scalar_t__ validchars (int ) ;
 int yp_error (char*,...) ;

__attribute__((used)) static int
validate(struct passwd *opw, struct x_passwd *npw)
{

 if (npw->pw_name[0] == '+' || npw->pw_name[0] == '-') {
  yp_error("client tried to modify an NIS entry");
  return(1);
 }

 if ((uid_t)npw->pw_uid != opw->pw_uid) {
  yp_error("UID mismatch: client says user %s has UID %d",
    npw->pw_name, npw->pw_uid);
  yp_error("database says user %s has UID %d", opw->pw_name,
    opw->pw_uid);
  return(1);
 }

 if ((gid_t)npw->pw_gid != opw->pw_gid) {
  yp_error("GID mismatch: client says user %s has GID %d",
    npw->pw_name, npw->pw_gid);
  yp_error("database says user %s has GID %d", opw->pw_name,
    opw->pw_gid);
  return(1);
 }





 if (!no_chsh && !ok_shell(npw->pw_shell)) {
  yp_error("%s is not a valid shell", npw->pw_shell);
  return(1);
 }

 if (!no_chsh && validchars(npw->pw_shell)) {
  yp_error("specified shell contains invalid characters");
  return(1);
 }

 if (validchars(npw->pw_gecos)) {
  yp_error("specified gecos field contains invalid characters");
  return(1);
 }

 if (validchars(npw->pw_passwd)) {
  yp_error("specified password contains invalid characters");
  return(1);
 }
 return(0);
}
