
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ EACCES ;
 scalar_t__ ENOTEMPTY ;
 int GetLastError () ;
 int MAX_PATH ;
 int Sleep (int ) ;
 int _wrmdir (int *) ;
 scalar_t__ ask_yes_no_if_possible (char*,char const*) ;
 int * delay ;
 scalar_t__ err_win_to_posix (int ) ;
 scalar_t__ errno ;
 int is_dir_empty (int *) ;
 scalar_t__ is_file_in_use_error (int ) ;
 scalar_t__ xutftowcs_path (int *,char const*) ;

int mingw_rmdir(const char *pathname)
{
 int ret, tries = 0;
 wchar_t wpathname[MAX_PATH];
 if (xutftowcs_path(wpathname, pathname) < 0)
  return -1;

 while ((ret = _wrmdir(wpathname)) == -1 && tries < ARRAY_SIZE(delay)) {
  if (!is_file_in_use_error(GetLastError()))
   errno = err_win_to_posix(GetLastError());
  if (errno != EACCES)
   break;
  if (!is_dir_empty(wpathname)) {
   errno = ENOTEMPTY;
   break;
  }







  Sleep(delay[tries]);
  tries++;
 }
 while (ret == -1 && errno == EACCES && is_file_in_use_error(GetLastError()) &&
        ask_yes_no_if_possible("Deletion of directory '%s' failed. "
   "Should I try again?", pathname))
        ret = _wrmdir(wpathname);
 return ret;
}
