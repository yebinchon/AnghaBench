
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_offset; scalar_t__ uio_resid; } ;
struct tmpfs_node {int tn_id; } ;
struct tmpfs_mount {int dummy; } ;
struct dirent {int d_namlen; char* d_name; scalar_t__ d_reclen; int d_type; int d_fileno; } ;


 int DT_DIR ;
 int EJUSTRETURN ;
 scalar_t__ GENERIC_DIRSIZ (struct dirent*) ;
 int MPASS (int) ;
 scalar_t__ TMPFS_DIRCOOKIE_DOT ;
 int TMPFS_NODE_ACCESSED ;
 int TMPFS_VALIDATE_DIR (struct tmpfs_node*) ;
 int dirent_terminate (struct dirent*) ;
 int tmpfs_set_status (struct tmpfs_mount*,struct tmpfs_node*,int ) ;
 int uiomove (struct dirent*,scalar_t__,struct uio*) ;

__attribute__((used)) static int
tmpfs_dir_getdotdent(struct tmpfs_mount *tm, struct tmpfs_node *node,
    struct uio *uio)
{
 int error;
 struct dirent dent;

 TMPFS_VALIDATE_DIR(node);
 MPASS(uio->uio_offset == TMPFS_DIRCOOKIE_DOT);

 dent.d_fileno = node->tn_id;
 dent.d_type = DT_DIR;
 dent.d_namlen = 1;
 dent.d_name[0] = '.';
 dent.d_reclen = GENERIC_DIRSIZ(&dent);
 dirent_terminate(&dent);

 if (dent.d_reclen > uio->uio_resid)
  error = EJUSTRETURN;
 else
  error = uiomove(&dent, dent.d_reclen, uio);

 tmpfs_set_status(tm, node, TMPFS_NODE_ACCESSED);

 return (error);
}
