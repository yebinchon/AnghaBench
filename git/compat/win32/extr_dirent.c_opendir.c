
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char wchar_t ;
typedef int WIN32_FIND_DATAW ;
struct TYPE_4__ {int dd_dir; scalar_t__ dd_stat; scalar_t__ dd_handle; } ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ DIR ;


 int ENOTDIR ;
 scalar_t__ ERROR_DIRECTORY ;
 scalar_t__ FindFirstFileW (char*,int *) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int err_win_to_posix (scalar_t__) ;
 int errno ;
 int finddata2dirent (int *,int *) ;
 int is_dir_sep (char) ;
 TYPE_1__* xmalloc (int) ;
 int xutftowcs_path (char*,char const*) ;

DIR *opendir(const char *name)
{
 wchar_t pattern[MAX_PATH + 2];
 WIN32_FIND_DATAW fdata;
 HANDLE h;
 int len;
 DIR *dir;


 if ((len = xutftowcs_path(pattern, name)) < 0)
  return ((void*)0);


 if (len && !is_dir_sep(pattern[len - 1]))
  pattern[len++] = '/';
 pattern[len++] = '*';
 pattern[len] = 0;


 h = FindFirstFileW(pattern, &fdata);
 if (h == INVALID_HANDLE_VALUE) {
  DWORD err = GetLastError();
  errno = (err == ERROR_DIRECTORY) ? ENOTDIR : err_win_to_posix(err);
  return ((void*)0);
 }


 dir = xmalloc(sizeof(DIR));
 dir->dd_handle = h;
 dir->dd_stat = 0;
 finddata2dirent(&dir->dd_dir, &fdata);
 return dir;
}
