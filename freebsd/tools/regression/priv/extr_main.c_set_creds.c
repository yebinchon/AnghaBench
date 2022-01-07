
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gids ;
typedef int gid_t ;


 int err (int,char*,char const*,int ) ;
 scalar_t__ setgid (int ) ;
 scalar_t__ setgroups (int,int *) ;
 scalar_t__ setuid (int ) ;

__attribute__((used)) static void
set_creds(const char *test, uid_t uid, gid_t gid)
{
 gid_t gids[1] = { gid };

 if (setgid(gid) < 0)
  err(-1, "test %s: setegid(%d)", test, gid);
 if (setgroups(sizeof(gids)/sizeof(gid_t), gids) < 0)
  err(-1, "test %s: setgroups(%d)", test, gid);
 if (setuid(uid) < 0)
  err(-1, "test %s: seteuid(%d)", test, uid);
}
