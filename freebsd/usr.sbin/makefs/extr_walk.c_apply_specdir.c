
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct stat {int st_nlink; int st_ctimensec; int st_atimensec; int st_mtimensec; int st_ctime; int st_atime; int st_mtime; int st_mode; } ;
typedef int stbuf ;
typedef int path ;
struct TYPE_9__ {scalar_t__ type; char* name; struct TYPE_9__* child; int symlink; struct TYPE_9__* first; struct TYPE_9__* parent; struct TYPE_9__* next; } ;
typedef TYPE_1__ fsnode ;
struct TYPE_11__ {int tv_nsec; int tv_sec; } ;
struct TYPE_10__ {scalar_t__ type; char* name; int flags; int * slink; struct TYPE_10__* next; struct TYPE_10__* child; } ;
typedef TYPE_2__ NODE ;


 int DEBUG_APPLY_SPECENTRY ;
 int DEBUG_APPLY_SPECFILE ;
 int DEBUG_APPLY_SPECONLY ;
 scalar_t__ F_DIR ;
 int F_GID ;
 int F_GNAME ;
 int F_MODE ;
 int F_OPT ;
 int F_TYPE ;
 int F_UID ;
 int F_UNAME ;
 int MAXPATHLEN ;
 int NODETEST (int,char*) ;
 scalar_t__ S_IFDIR ;
 scalar_t__ S_IFLNK ;
 int apply_specentry (char const*,TYPE_2__*,TYPE_1__*) ;
 int assert (int) ;
 void* create_fsnode (char*,char*,char*,struct stat*) ;
 int debug ;
 int errx (int,char*,...) ;
 int estrdup (int *) ;
 int free_fsnodes (TYPE_1__*) ;
 int lstat (char*,struct stat*) ;
 int memset (struct stat*,int ,int) ;
 int nodetoino (scalar_t__) ;
 int printf (char*,char const*,...) ;
 scalar_t__ snprintf (char*,int,char*,char const*,char*) ;
 TYPE_3__ start_time ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
apply_specdir(const char *dir, NODE *specnode, fsnode *dirnode, int speconly)
{
 char path[MAXPATHLEN + 1];
 NODE *curnode;
 fsnode *curfsnode;

 assert(specnode != ((void*)0));
 assert(dirnode != ((void*)0));

 if (debug & DEBUG_APPLY_SPECFILE)
  printf("apply_specdir: %s %p %p\n", dir, specnode, dirnode);

 if (specnode->type != F_DIR)
  errx(1, "Specfile node `%s/%s' is not a directory",
      dir, specnode->name);
 if (dirnode->type != S_IFDIR)
  errx(1, "Directory node `%s/%s' is not a directory",
      dir, dirnode->name);

 apply_specentry(dir, specnode, dirnode);






 if (speconly) {
  fsnode *next;
  assert(dirnode->name[0] == '.' && dirnode->name[1] == '\0');
  for (curfsnode = dirnode->next; curfsnode != ((void*)0); curfsnode = next) {
   next = curfsnode->next;
   for (curnode = specnode->child; curnode != ((void*)0);
        curnode = curnode->next) {
    if (strcmp(curnode->name, curfsnode->name) == 0)
     break;
   }
   if (curnode == ((void*)0)) {
    if (debug & DEBUG_APPLY_SPECONLY) {
     printf("apply_specdir: trimming %s/%s %p\n", dir, curfsnode->name, curfsnode);
    }
    free_fsnodes(curfsnode);
   }
  }
 }


 for (curnode = specnode->child; curnode != ((void*)0);
     curnode = curnode->next) {
  if (debug & DEBUG_APPLY_SPECENTRY)
   printf("apply_specdir:  spec %s\n",
       curnode->name);
  for (curfsnode = dirnode->next; curfsnode != ((void*)0);
      curfsnode = curfsnode->next) {





   if (strcmp(curnode->name, curfsnode->name) == 0)
    break;
  }
  if ((size_t)snprintf(path, sizeof(path), "%s/%s", dir,
      curnode->name) >= sizeof(path))
   errx(1, "Pathname too long.");
  if (curfsnode == ((void*)0)) {
   struct stat stbuf;





   if ((curnode->flags & F_OPT) &&
       lstat(path, &stbuf) == -1)
     continue;





   if (!(curnode->flags & F_TYPE)) errx(1, "`%s': %s not provided", path, "type");
   if (!(curnode->flags & F_MODE)) errx(1, "`%s': %s not provided", path, "mode");

   if (!(curnode->flags & F_GID || curnode->flags & F_GNAME)) errx(1, "`%s': %s not provided", path, "group");

   if (!(curnode->flags & F_UID || curnode->flags & F_UNAME)) errx(1, "`%s': %s not provided", path, "user");






   if (debug & DEBUG_APPLY_SPECFILE)
    printf("apply_specdir: adding %s\n",
        curnode->name);

   memset(&stbuf, 0, sizeof(stbuf));
   stbuf.st_mode = nodetoino(curnode->type);
   stbuf.st_nlink = 1;
   stbuf.st_mtime = stbuf.st_atime =
       stbuf.st_ctime = start_time.tv_sec;




   curfsnode = create_fsnode(".", ".", curnode->name,
       &stbuf);
   curfsnode->parent = dirnode->parent;
   curfsnode->first = dirnode;
   curfsnode->next = dirnode->next;
   dirnode->next = curfsnode;
   if (curfsnode->type == S_IFDIR) {

    curfsnode->child = create_fsnode(".", ".", ".",
        &stbuf);
    curfsnode->child->parent = curfsnode;
    curfsnode->child->first = curfsnode->child;
   }
   if (curfsnode->type == S_IFLNK) {
    assert(curnode->slink != ((void*)0));

    curfsnode->symlink = estrdup(curnode->slink);
   }
  }
  apply_specentry(dir, curnode, curfsnode);
  if (curnode->type == F_DIR) {
   if (curfsnode->type != S_IFDIR)
    errx(1, "`%s' is not a directory", path);
   assert (curfsnode->child != ((void*)0));
   apply_specdir(path, curnode, curfsnode->child, speconly);
  }
 }
}
