
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dirent_prec_psx {size_t max_name_len; char* d_name; int d_type; int d_ino; } ;
struct dirent {int d_name; int d_type; int d_ino; } ;
typedef scalar_t__ iconv_t ;
typedef int iconv_ibp ;
typedef int dirent_prec_psx ;
struct TYPE_3__ {scalar_t__ ic_precompose; struct dirent_prec_psx* dirent_nfc; int dirp; } ;
typedef TYPE_1__ PREC_DIR ;


 int die (char*,int ,int ) ;
 int errno ;
 scalar_t__ has_non_ascii (int ,size_t,int *) ;
 int iconv (scalar_t__,int *,size_t*,char**,size_t*) ;
 int path_encoding ;
 int precomposed_unicode ;
 struct dirent* readdir (int ) ;
 int repo_encoding ;
 int strlcpy (char*,int ,size_t) ;
 int strlen (int ) ;
 struct dirent_prec_psx* xrealloc (struct dirent_prec_psx*,size_t) ;

struct dirent_prec_psx *precompose_utf8_readdir(PREC_DIR *prec_dir)
{
 struct dirent *res;
 res = readdir(prec_dir->dirp);
 if (res) {
  size_t namelenz = strlen(res->d_name) + 1;
  size_t new_maxlen = namelenz;

  int ret_errno = errno;

  if (new_maxlen > prec_dir->dirent_nfc->max_name_len) {
   size_t new_len = sizeof(dirent_prec_psx) + new_maxlen -
    sizeof(prec_dir->dirent_nfc->d_name);

   prec_dir->dirent_nfc = xrealloc(prec_dir->dirent_nfc, new_len);
   prec_dir->dirent_nfc->max_name_len = new_maxlen;
  }

  prec_dir->dirent_nfc->d_ino = res->d_ino;
  prec_dir->dirent_nfc->d_type = res->d_type;

  if ((precomposed_unicode == 1) && has_non_ascii(res->d_name, (size_t)-1, ((void*)0))) {
   if (prec_dir->ic_precompose == (iconv_t)-1) {
    die("iconv_open(%s,%s) failed, but needed:\n"
      "    precomposed unicode is not supported.\n"
      "    If you want to use decomposed unicode, run\n"
      "    \"git config core.precomposeunicode false\"\n",
      repo_encoding, path_encoding);
   } else {
    iconv_ibp cp = (iconv_ibp)res->d_name;
    size_t inleft = namelenz;
    char *outpos = &prec_dir->dirent_nfc->d_name[0];
    size_t outsz = prec_dir->dirent_nfc->max_name_len;
    errno = 0;
    iconv(prec_dir->ic_precompose, &cp, &inleft, &outpos, &outsz);
    if (errno || inleft) {






     namelenz = 0;
    }
   }
  } else
   namelenz = 0;

  if (!namelenz)
   strlcpy(prec_dir->dirent_nfc->d_name, res->d_name,
       prec_dir->dirent_nfc->max_name_len);

  errno = ret_errno;
  return prec_dir->dirent_nfc;
 }
 return ((void*)0);
}
