
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dirent {int dummy; } ;
typedef int WIN32_FIND_DATAW ;
struct TYPE_3__ {struct dirent dd_dir; scalar_t__ dd_stat; int dd_handle; } ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ DIR ;


 int EBADF ;
 scalar_t__ ERROR_NO_MORE_FILES ;
 scalar_t__ FindNextFileW (int ,int *) ;
 scalar_t__ GetLastError () ;
 int err_win_to_posix (scalar_t__) ;
 int errno ;
 int finddata2dirent (struct dirent*,int *) ;

struct dirent *readdir(DIR *dir)
{
 if (!dir) {
  errno = EBADF;
  return ((void*)0);
 }


 if (dir->dd_stat) {

  WIN32_FIND_DATAW fdata;
  if (FindNextFileW(dir->dd_handle, &fdata)) {
   finddata2dirent(&dir->dd_dir, &fdata);
  } else {
   DWORD lasterr = GetLastError();


   if (lasterr != ERROR_NO_MORE_FILES)
    errno = err_win_to_posix(lasterr);
   return ((void*)0);
  }
 }

 ++dir->dd_stat;
 return &dir->dd_dir;
}
