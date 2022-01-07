
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int MAX_PATH ;
 int _wmkdir (int *) ;
 scalar_t__ needs_hiding (char const*) ;
 int set_hidden_flag (int *,int) ;
 scalar_t__ xutftowcs_path (int *,char const*) ;

int mingw_mkdir(const char *path, int mode)
{
 int ret;
 wchar_t wpath[MAX_PATH];
 if (xutftowcs_path(wpath, path) < 0)
  return -1;
 ret = _wmkdir(wpath);
 if (!ret && needs_hiding(path))
  return set_hidden_flag(wpath, 1);
 return ret;
}
