
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct denode {int dummy; } ;
typedef int pbuf ;
struct TYPE_10__ {char* name; char* contents; int path; int type; struct TYPE_10__* child; TYPE_1__* inode; struct TYPE_10__* parent; struct TYPE_10__* next; } ;
typedef TYPE_2__ fsnode ;
struct TYPE_11__ {scalar_t__ curinode; } ;
typedef TYPE_3__ fsinfo_t ;
struct TYPE_9__ {int flags; scalar_t__ ino; } ;


 int FI_ALLOCATED ;
 int FI_WRITTEN ;
 int MAXPATHLEN ;
 int S_ISREG (int ) ;
 int assert (int ) ;
 struct denode* msdosfs_mkdire (char*,struct denode*,TYPE_2__*) ;
 int * msdosfs_mkfile (char*,struct denode*,TYPE_2__*) ;
 scalar_t__ snprintf (char*,int,char*,char const*,char*) ;
 int warn (char*,char*) ;
 int warnx (char*,char*,...) ;

__attribute__((used)) static int
msdos_populate_dir(const char *path, struct denode *dir, fsnode *root,
    fsnode *parent, fsinfo_t *fsopts)
{
 fsnode *cur;
 char pbuf[MAXPATHLEN];

 assert(dir != ((void*)0));
 assert(root != ((void*)0));
 assert(fsopts != ((void*)0));

 for (cur = root->next; cur != ((void*)0); cur = cur->next) {
  if ((size_t)snprintf(pbuf, sizeof(pbuf), "%s/%s", path,
      cur->name) >= sizeof(pbuf)) {
   warnx("path %s too long", pbuf);
   return -1;
  }

  if ((cur->inode->flags & FI_ALLOCATED) == 0) {
   cur->inode->flags |= FI_ALLOCATED;
   if (cur != root) {
    fsopts->curinode++;
    cur->inode->ino = fsopts->curinode;
    cur->parent = parent;
   }
  }

  if (cur->inode->flags & FI_WRITTEN) {
   continue;
  }
  cur->inode->flags |= FI_WRITTEN;

  if (cur->child) {
   struct denode *de;
   if ((de = msdosfs_mkdire(pbuf, dir, cur)) == ((void*)0)) {
    warn("msdosfs_mkdire %s", pbuf);
    return -1;
   }
   if (msdos_populate_dir(pbuf, de, cur->child, cur,
       fsopts) == -1) {
    warn("msdos_populate_dir %s", pbuf);
    return -1;
   }
   continue;
  } else if (!S_ISREG(cur->type)) {
   warnx("skipping non-regular file %s/%s", cur->path,
       cur->name);
   continue;
  }
  if (msdosfs_mkfile(cur->contents ? cur->contents : pbuf, dir,
      cur) == ((void*)0)) {
   warn("msdosfs_mkfile %s", pbuf);
   return -1;
  }
 }
 return 0;
}
