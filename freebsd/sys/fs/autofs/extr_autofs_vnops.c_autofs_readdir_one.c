
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {size_t uio_resid; } ;
struct dirent {int d_fileno; size_t d_reclen; size_t d_namlen; int d_name; int d_type; } ;


 int DT_DIR ;
 int EINVAL ;
 size_t _GENERIC_DIRLEN (size_t) ;
 int dirent_terminate (struct dirent*) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;
 int uiomove (struct dirent*,size_t,struct uio*) ;

__attribute__((used)) static int
autofs_readdir_one(struct uio *uio, const char *name, int fileno,
    size_t *reclenp)
{
 struct dirent dirent;
 size_t namlen, reclen;
 int error;

 namlen = strlen(name);
 reclen = _GENERIC_DIRLEN(namlen);
 if (reclenp != ((void*)0))
  *reclenp = reclen;

 if (uio == ((void*)0))
  return (0);

 if (uio->uio_resid < reclen)
  return (EINVAL);

 dirent.d_fileno = fileno;
 dirent.d_reclen = reclen;
 dirent.d_type = DT_DIR;
 dirent.d_namlen = namlen;
 memcpy(dirent.d_name, name, namlen);
 dirent_terminate(&dirent);
 error = uiomove(&dirent, reclen, uio);

 return (error);
}
