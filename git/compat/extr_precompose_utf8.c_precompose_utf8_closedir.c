
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ iconv_t ;
struct TYPE_4__ {scalar_t__ ic_precompose; struct TYPE_4__* dirent_nfc; int dirp; } ;
typedef TYPE_1__ PREC_DIR ;


 int closedir (int ) ;
 int errno ;
 int free (TYPE_1__*) ;
 int iconv_close (scalar_t__) ;

int precompose_utf8_closedir(PREC_DIR *prec_dir)
{
 int ret_value;
 int ret_errno;
 ret_value = closedir(prec_dir->dirp);
 ret_errno = errno;
 if (prec_dir->ic_precompose != (iconv_t)-1)
  iconv_close(prec_dir->ic_precompose);
 free(prec_dir->dirent_nfc);
 free(prec_dir);
 errno = ret_errno;
 return ret_value;
}
