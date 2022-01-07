
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CreateHardLinkW (int *,int *,int *) ;
 int GetLastError () ;
 int MAX_PATH ;
 int err_win_to_posix (int ) ;
 int errno ;
 scalar_t__ xutftowcs_path (int *,char const*) ;

int link(const char *oldpath, const char *newpath)
{
 wchar_t woldpath[MAX_PATH], wnewpath[MAX_PATH];
 if (xutftowcs_path(woldpath, oldpath) < 0 ||
  xutftowcs_path(wnewpath, newpath) < 0)
  return -1;

 if (!CreateHardLinkW(wnewpath, woldpath, ((void*)0))) {
  errno = err_win_to_posix(GetLastError());
  return -1;
 }
 return 0;
}
