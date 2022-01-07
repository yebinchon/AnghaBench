
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_mode; int st_birthtimensec; int st_birthtime; int st_ctimensec; int st_mtimensec; int st_atimensec; int st_ctime; int st_mtime; int st_atime; } ;
struct TYPE_6__ {char const* root; int type; TYPE_1__* inode; void* name; void* path; } ;
typedef TYPE_2__ fsnode ;
struct TYPE_7__ {int st_birthtimensec; int st_birthtime; int st_ctimensec; int st_mtimensec; int st_atimensec; int st_ctime; int st_mtime; int st_atime; scalar_t__ st_ino; } ;
struct TYPE_5__ {int nlink; struct stat st; } ;


 int S_IFMT ;
 void* ecalloc (int,int) ;
 void* estrdup (char const*) ;
 TYPE_3__ stampst ;

__attribute__((used)) static fsnode *
create_fsnode(const char *root, const char *path, const char *name,
    struct stat *stbuf)
{
 fsnode *cur;

 cur = ecalloc(1, sizeof(*cur));
 cur->path = estrdup(path);
 cur->name = estrdup(name);
 cur->inode = ecalloc(1, sizeof(*cur->inode));
 cur->root = root;
 cur->type = stbuf->st_mode & S_IFMT;
 cur->inode->nlink = 1;
 cur->inode->st = *stbuf;
 if (stampst.st_ino) {
  cur->inode->st.st_atime = stampst.st_atime;
  cur->inode->st.st_mtime = stampst.st_mtime;
  cur->inode->st.st_ctime = stampst.st_ctime;
 }
 return (cur);
}
