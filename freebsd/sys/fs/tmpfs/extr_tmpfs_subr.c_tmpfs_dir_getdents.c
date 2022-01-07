
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u_long ;
struct uio {int uio_offset; scalar_t__ uio_resid; } ;
struct TYPE_5__ {struct tmpfs_dirent* tn_readdir_lastp; void* tn_readdir_lastn; } ;
struct tmpfs_node {TYPE_2__ tn_dir; } ;
struct tmpfs_mount {int dummy; } ;
struct TYPE_4__ {int td_name; } ;
struct tmpfs_dirent {int td_namelen; TYPE_1__ ud; TYPE_3__* td_node; } ;
struct tmpfs_dir_cursor {int dummy; } ;
struct dirent {int d_fileno; int d_namlen; scalar_t__ d_reclen; int d_name; int d_type; } ;
typedef void* off_t ;
struct TYPE_6__ {int tn_id; int tn_type; } ;


 int DT_BLK ;
 int DT_CHR ;
 int DT_DIR ;
 int DT_FIFO ;
 int DT_LNK ;
 int DT_REG ;
 int DT_SOCK ;
 int DT_WHT ;
 int EINVAL ;
 int EJUSTRETURN ;
 scalar_t__ GENERIC_DIRSIZ (struct dirent*) ;
 int MPASS (int) ;



 int TMPFS_NODE_ACCESSED ;
 int TMPFS_VALIDATE_DIR (struct tmpfs_node*) ;







 int dirent_terminate (struct dirent*) ;
 int memcpy (int ,int ,int) ;
 int panic (char*,TYPE_3__*,int) ;
 struct tmpfs_dirent* tmpfs_dir_first (struct tmpfs_node*,struct tmpfs_dir_cursor*) ;
 int tmpfs_dir_getdotdent (struct tmpfs_mount*,struct tmpfs_node*,struct uio*) ;
 int tmpfs_dir_getdotdotdent (struct tmpfs_mount*,struct tmpfs_node*,struct uio*) ;
 struct tmpfs_dirent* tmpfs_dir_lookup_cookie (struct tmpfs_node*,int,struct tmpfs_dir_cursor*) ;
 struct tmpfs_dirent* tmpfs_dir_next (struct tmpfs_node*,struct tmpfs_dir_cursor*) ;
 void* tmpfs_dirent_cookie (struct tmpfs_dirent*) ;
 int tmpfs_set_status (struct tmpfs_mount*,struct tmpfs_node*,int ) ;
 int uiomove (struct dirent*,scalar_t__,struct uio*) ;

int
tmpfs_dir_getdents(struct tmpfs_mount *tm, struct tmpfs_node *node,
    struct uio *uio, int maxcookies, u_long *cookies, int *ncookies)
{
 struct tmpfs_dir_cursor dc;
 struct tmpfs_dirent *de;
 off_t off;
 int error;

 TMPFS_VALIDATE_DIR(node);

 off = 0;
 switch (uio->uio_offset) {
 case 137:
  error = tmpfs_dir_getdotdent(tm, node, uio);
  if (error != 0)
   return (error);
  uio->uio_offset = 136;
  if (cookies != ((void*)0))
   cookies[(*ncookies)++] = off = uio->uio_offset;

 case 136:
  error = tmpfs_dir_getdotdotdent(tm, node, uio);
  if (error != 0)
   return (error);
  de = tmpfs_dir_first(node, &dc);
  uio->uio_offset = tmpfs_dirent_cookie(de);
  if (cookies != ((void*)0))
   cookies[(*ncookies)++] = off = uio->uio_offset;

  if (de == ((void*)0))
   return (0);
  break;
 case 135:
  return (0);
 default:
  de = tmpfs_dir_lookup_cookie(node, uio->uio_offset, &dc);
  if (de == ((void*)0))
   return (EINVAL);
  if (cookies != ((void*)0))
   off = tmpfs_dirent_cookie(de);
 }



 do {
  struct dirent d;



  if (de->td_node == ((void*)0)) {
   d.d_fileno = 1;
   d.d_type = DT_WHT;
  } else {
   d.d_fileno = de->td_node->tn_id;
   switch (de->td_node->tn_type) {
   case 134:
    d.d_type = DT_BLK;
    break;

   case 133:
    d.d_type = DT_CHR;
    break;

   case 132:
    d.d_type = DT_DIR;
    break;

   case 131:
    d.d_type = DT_FIFO;
    break;

   case 130:
    d.d_type = DT_LNK;
    break;

   case 129:
    d.d_type = DT_REG;
    break;

   case 128:
    d.d_type = DT_SOCK;
    break;

   default:
    panic("tmpfs_dir_getdents: type %p %d",
        de->td_node, (int)de->td_node->tn_type);
   }
  }
  d.d_namlen = de->td_namelen;
  MPASS(de->td_namelen < sizeof(d.d_name));
  (void)memcpy(d.d_name, de->ud.td_name, de->td_namelen);
  d.d_reclen = GENERIC_DIRSIZ(&d);
  dirent_terminate(&d);



  if (d.d_reclen > uio->uio_resid) {
   error = EJUSTRETURN;
   break;
  }



  error = uiomove(&d, d.d_reclen, uio);
  if (error == 0) {
   de = tmpfs_dir_next(node, &dc);
   if (cookies != ((void*)0)) {
    off = tmpfs_dirent_cookie(de);
    MPASS(*ncookies < maxcookies);
    cookies[(*ncookies)++] = off;
   }
  }
 } while (error == 0 && uio->uio_resid > 0 && de != ((void*)0));


 if (cookies == ((void*)0))
  off = tmpfs_dirent_cookie(de);


 uio->uio_offset = off;
 node->tn_dir.tn_readdir_lastn = off;
 node->tn_dir.tn_readdir_lastp = de;

 tmpfs_set_status(tm, node, TMPFS_NODE_ACCESSED);
 return error;
}
