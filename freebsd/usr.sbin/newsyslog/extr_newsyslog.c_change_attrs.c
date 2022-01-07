
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct conf_entry {int permissions; scalar_t__ uid; int gid; int flags; } ;
typedef int gid_t ;


 int CE_NODUMP ;
 scalar_t__ EPERM ;
 int UF_NODUMP ;
 int chflags (char const*,int ) ;
 int chmod (char const*,int) ;
 int chown (char const*,scalar_t__,int) ;
 int err (int,char*,char const*) ;
 scalar_t__ errno ;
 scalar_t__ noaction ;
 int printf (char*,...) ;
 int warn (char*,char const*) ;

__attribute__((used)) static void
change_attrs(const char *fname, const struct conf_entry *ent)
{
 int failed;

 if (noaction) {
  printf("\tchmod %o %s\n", ent->permissions, fname);

  if (ent->uid != (uid_t)-1 || ent->gid != (gid_t)-1)
   printf("\tchown %u:%u %s\n",
       ent->uid, ent->gid, fname);

  if (ent->flags & CE_NODUMP)
   printf("\tchflags nodump %s\n", fname);
  return;
 }

 failed = chmod(fname, ent->permissions);
 if (failed) {
  if (errno != EPERM)
   err(1, "chmod(%s) in change_attrs", fname);
  warn("change_attrs couldn't chmod(%s)", fname);
 }

 if (ent->uid != (uid_t)-1 || ent->gid != (gid_t)-1) {
  failed = chown(fname, ent->uid, ent->gid);
  if (failed)
   warn("can't chown %s", fname);
 }

 if (ent->flags & CE_NODUMP) {
  failed = chflags(fname, UF_NODUMP);
  if (failed)
   warn("can't chflags %s NODUMP", fname);
 }
}
