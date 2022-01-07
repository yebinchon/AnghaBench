
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct userconf {int dummy; } ;
struct passwd {int pw_dir; scalar_t__ pw_uid; int pw_name; int pw_gid; } ;
typedef int mode_t ;
struct TYPE_2__ {int rootfd; } ;


 int M_ADD ;
 int M_UPDATE ;
 int O_CLOEXEC ;
 int O_DIRECTORY ;
 int W_USER ;
 TYPE_1__ conf ;
 int copymkdir (int ,int ,int,int ,scalar_t__,int ,int ) ;
 int mkdir_home_parents (int ,int ) ;
 int openat (int ,char const*,int) ;
 int pw_log (struct userconf*,int ,int ,char*,int ,int ,int ) ;

__attribute__((used)) static void
create_and_populate_homedir(struct userconf *cnf, struct passwd *pwd,
    const char *skeldir, mode_t homemode, bool update)
{
 int skelfd = -1;


 mkdir_home_parents(conf.rootfd, pwd->pw_dir);

 if (skeldir != ((void*)0) && *skeldir != '\0') {
  if (*skeldir == '/')
   skeldir++;
  skelfd = openat(conf.rootfd, skeldir, O_DIRECTORY|O_CLOEXEC);
 }

 copymkdir(conf.rootfd, pwd->pw_dir, skelfd, homemode, pwd->pw_uid,
     pwd->pw_gid, 0);
 pw_log(cnf, update ? M_UPDATE : M_ADD, W_USER, "%s(%ju) home %s made",
     pwd->pw_name, (uintmax_t)pwd->pw_uid, pwd->pw_dir);
}
