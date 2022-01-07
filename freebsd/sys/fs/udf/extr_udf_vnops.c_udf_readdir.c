
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct vop_readdir_args {int* a_eofflag; int ** a_cookies; scalar_t__* a_ncookies; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct uio {int uio_resid; scalar_t__ uio_offset; } ;
struct udf_uiodir {int eofflag; int ncookies; scalar_t__ acookies; struct dirent* dirent; int * cookies; } ;
struct udf_node {void* hash_id; struct udf_mnt* udfmp; TYPE_1__* fentry; } ;
struct udf_mnt {int dummy; } ;
struct udf_dirstream {int this_off; int error; scalar_t__ off; scalar_t__ offset; } ;
struct fileid_desc {int file_char; scalar_t__ l_fi; size_t l_iu; int icb; int * data; int tag; } ;
struct dirent {char* d_name; int d_namlen; int d_off; void* d_reclen; void* d_type; void* d_fileno; } ;
struct TYPE_2__ {int inf_len; } ;


 void* DT_DIR ;
 void* DT_UNKNOWN ;
 int EIO ;
 int ENOMEM ;
 void* GENERIC_DIRSIZ (struct dirent*) ;
 int M_TEMP ;
 int M_WAITOK ;
 int TAGID_FID ;
 int UDF_FID_SIZE ;
 int UDF_FILE_CHAR_DEL ;
 int UDF_FILE_CHAR_DIR ;
 int UDF_FILE_CHAR_PAR ;
 struct udf_node* VTON (struct vnode*) ;
 int dirent_terminate (struct dirent*) ;
 int free (int *,int ) ;
 int hexdump (struct fileid_desc*,int ,int *,int ) ;
 int le64toh (int ) ;
 int * malloc (int,int ,int ) ;
 int printf (char*) ;
 scalar_t__ udf_checktag (int *,int ) ;
 int udf_closedir (struct udf_dirstream*) ;
 struct fileid_desc* udf_getfid (struct udf_dirstream*) ;
 void* udf_getid (int *) ;
 struct udf_dirstream* udf_opendir (struct udf_node*,scalar_t__,int ,struct udf_mnt*) ;
 int udf_transname (int *,char*,scalar_t__,struct udf_mnt*) ;
 int udf_uiodir (struct udf_uiodir*,void*,struct uio*,int) ;

__attribute__((used)) static int
udf_readdir(struct vop_readdir_args *a)
{
 struct vnode *vp;
 struct uio *uio;
 struct dirent dir;
 struct udf_node *node;
 struct udf_mnt *udfmp;
 struct fileid_desc *fid;
 struct udf_uiodir uiodir;
 struct udf_dirstream *ds;
 u_long *cookies = ((void*)0);
 int ncookies;
 int error = 0;

 vp = a->a_vp;
 uio = a->a_uio;
 node = VTON(vp);
 udfmp = node->udfmp;
 uiodir.eofflag = 1;

 if (a->a_ncookies != ((void*)0)) {





  ncookies = uio->uio_resid / 8;
  cookies = malloc(sizeof(u_long) * ncookies,
      M_TEMP, M_WAITOK);
  if (cookies == ((void*)0))
   return (ENOMEM);
  uiodir.ncookies = ncookies;
  uiodir.cookies = cookies;
  uiodir.acookies = 0;
 } else {
  uiodir.cookies = ((void*)0);
 }





 ds = udf_opendir(node, uio->uio_offset, le64toh(node->fentry->inf_len),
     node->udfmp);

 while ((fid = udf_getfid(ds)) != ((void*)0)) {


  if (udf_checktag(&fid->tag, TAGID_FID)) {
   printf("Invalid FID tag\n");
   hexdump(fid, UDF_FID_SIZE, ((void*)0), 0);
   error = EIO;
   break;
  }


  if (fid->file_char & UDF_FILE_CHAR_DEL)
   continue;

  if ((fid->l_fi == 0) && (fid->file_char & UDF_FILE_CHAR_PAR)) {




   dir.d_fileno = node->hash_id;
   dir.d_type = DT_DIR;
   dir.d_name[0] = '.';
   dir.d_namlen = 1;
   dir.d_reclen = GENERIC_DIRSIZ(&dir);
   dir.d_off = 1;
   dirent_terminate(&dir);
   uiodir.dirent = &dir;
   error = udf_uiodir(&uiodir, dir.d_reclen, uio, 1);
   if (error)
    break;

   dir.d_fileno = udf_getid(&fid->icb);
   dir.d_type = DT_DIR;
   dir.d_name[0] = '.';
   dir.d_name[1] = '.';
   dir.d_namlen = 2;
   dir.d_reclen = GENERIC_DIRSIZ(&dir);
   dir.d_off = 2;
   dirent_terminate(&dir);
   uiodir.dirent = &dir;
   error = udf_uiodir(&uiodir, dir.d_reclen, uio, 2);
  } else {
   dir.d_namlen = udf_transname(&fid->data[fid->l_iu],
       &dir.d_name[0], fid->l_fi, udfmp);
   dir.d_fileno = udf_getid(&fid->icb);
   dir.d_type = (fid->file_char & UDF_FILE_CHAR_DIR) ?
       DT_DIR : DT_UNKNOWN;
   dir.d_reclen = GENERIC_DIRSIZ(&dir);
   dir.d_off = ds->this_off;
   dirent_terminate(&dir);
   uiodir.dirent = &dir;
   error = udf_uiodir(&uiodir, dir.d_reclen, uio,
       ds->this_off);
  }
  if (error)
   break;
  uio->uio_offset = ds->offset + ds->off;
 }


 *a->a_eofflag = uiodir.eofflag;

 if (error < 0)
  error = 0;
 if (!error)
  error = ds->error;

 udf_closedir(ds);

 if (a->a_ncookies != ((void*)0)) {
  if (error)
   free(cookies, M_TEMP);
  else {
   *a->a_ncookies = uiodir.acookies;
   *a->a_cookies = cookies;
  }
 }

 return (error);
}
