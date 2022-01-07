
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct userconf {int dummy; } ;
struct group {char* member_0; char* member_1; int member_2; char* gr_passwd; scalar_t__ gr_gid; int gr_name; int * gr_mem; int * member_3; } ;
typedef int gid_t ;


 int EXIT_SUCCESS ;
 int EX_IOERR ;
 int M_ADD ;
 int W_GROUP ;
 int addgrent (struct group*) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 scalar_t__ gr_gidpolicy (struct userconf*,int ) ;
 int grp_add_members (struct group**,char*) ;
 int grp_set_passwd (struct group*,int,int,int) ;
 int print_group (struct group*,int) ;
 int pw_checkname (char*,int ) ;
 int pw_log (struct userconf*,int ,int ,char*,int ,int ) ;

int
groupadd(struct userconf *cnf, char *name, gid_t id, char *members, int fd,
    bool dryrun, bool pretty, bool precrypted)
{
 struct group *grp;
 int rc;

 struct group fakegroup = {
  "nogroup",
  "*",
  -1,
  ((void*)0)
 };

 grp = &fakegroup;
 grp->gr_name = pw_checkname(name, 0);
 grp->gr_passwd = "*";
 grp->gr_gid = gr_gidpolicy(cnf, id);
 grp->gr_mem = ((void*)0);







 grp_set_passwd(grp, 0, fd, precrypted);
 grp_add_members(&grp, members);
 if (dryrun)
  return (print_group(grp, pretty));

 if ((rc = addgrent(grp)) != 0) {
  if (rc == -1)
   errx(EX_IOERR, "group '%s' already exists",
       grp->gr_name);
  else
   err(EX_IOERR, "group update");
 }

 pw_log(cnf, M_ADD, W_GROUP, "%s(%ju)", grp->gr_name,
     (uintmax_t)grp->gr_gid);

 return (EXIT_SUCCESS);
}
