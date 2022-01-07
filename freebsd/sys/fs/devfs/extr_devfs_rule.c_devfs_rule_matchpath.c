
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfs_rule {int dr_pathptrn; } ;
struct devfs_mount {struct devfs_dirent* dm_rootdir; } ;
struct devfs_krule {struct devfs_rule dk_rule; } ;
struct devfs_dirent {int de_flags; TYPE_1__* de_dirent; } ;
struct cdev {char* si_name; } ;
struct TYPE_2__ {scalar_t__ d_type; } ;


 int DE_DOT ;
 int DE_DOTDOT ;
 scalar_t__ DT_DIR ;
 scalar_t__ DT_LNK ;
 int FNM_PATHNAME ;
 int KASSERT (int ,char*) ;
 int M_TEMP ;
 int M_WAITOK ;
 scalar_t__ SPECNAMELEN ;
 char* devfs_fqpn (char*,struct devfs_mount*,struct devfs_dirent*,int *) ;
 struct cdev* devfs_rule_getdev (struct devfs_dirent*) ;
 scalar_t__ fnmatch (int ,char*,int ) ;
 int free (char*,int ) ;
 char* malloc (scalar_t__,int ,int ) ;

__attribute__((used)) static int
devfs_rule_matchpath(struct devfs_krule *dk, struct devfs_mount *dm,
    struct devfs_dirent *de)
{
 struct devfs_rule *dr = &dk->dk_rule;
 struct cdev *dev;
 int match;
 char *pname, *specname;

 specname = ((void*)0);
 dev = devfs_rule_getdev(de);
 if (dev != ((void*)0))
  pname = dev->si_name;
 else if (de->de_dirent->d_type == DT_LNK ||
     (de->de_dirent->d_type == DT_DIR && de != dm->dm_rootdir &&
     (de->de_flags & (DE_DOT | DE_DOTDOT)) == 0)) {
  specname = malloc(SPECNAMELEN + 1, M_TEMP, M_WAITOK);
  pname = devfs_fqpn(specname, dm, de, ((void*)0));
 } else
  return (0);

 KASSERT(pname != ((void*)0), ("devfs_rule_matchpath: NULL pname"));
 match = fnmatch(dr->dr_pathptrn, pname, FNM_PATHNAME) == 0;
 free(specname, M_TEMP);
 return (match);
}
