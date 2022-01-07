
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int ARRAY_SIZE (int *) ;
 int GetLastError () ;
 int MAX_PATH ;
 int Sleep (int ) ;
 int _wchmod (int *,int) ;
 int _wunlink (int *) ;
 scalar_t__ ask_yes_no_if_possible (char*,char const*) ;
 int * delay ;
 scalar_t__ is_file_in_use_error (int ) ;
 scalar_t__ xutftowcs_path (int *,char const*) ;

int mingw_unlink(const char *pathname)
{
 int ret, tries = 0;
 wchar_t wpathname[MAX_PATH];
 if (xutftowcs_path(wpathname, pathname) < 0)
  return -1;


 _wchmod(wpathname, 0666);
 while ((ret = _wunlink(wpathname)) == -1 && tries < ARRAY_SIZE(delay)) {
  if (!is_file_in_use_error(GetLastError()))
   break;







  Sleep(delay[tries]);
  tries++;
 }
 while (ret == -1 && is_file_in_use_error(GetLastError()) &&
        ask_yes_no_if_possible("Unlink of file '%s' failed. "
   "Should I try again?", pathname))
        ret = _wunlink(wpathname);
 return ret;
}
