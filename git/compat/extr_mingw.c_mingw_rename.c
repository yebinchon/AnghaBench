
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ DWORD ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ EACCES ;
 scalar_t__ EEXIST ;
 scalar_t__ EISDIR ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ FILE_ATTRIBUTE_DIRECTORY ;
 scalar_t__ FILE_ATTRIBUTE_READONLY ;
 scalar_t__ GetFileAttributesW (int *) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int MAX_PATH ;
 int MOVEFILE_REPLACE_EXISTING ;
 scalar_t__ MoveFileExW (int *,int *,int ) ;
 int SetFileAttributesW (int *,scalar_t__) ;
 int Sleep (int ) ;
 int _wrename (int *,int *) ;
 int _wrmdir (int *) ;
 scalar_t__ ask_yes_no_if_possible (char*,char const*,char const*) ;
 int * delay ;
 scalar_t__ errno ;
 scalar_t__ xutftowcs_path (int *,char const*) ;

int mingw_rename(const char *pold, const char *pnew)
{
 DWORD attrs, gle;
 int tries = 0;
 wchar_t wpold[MAX_PATH], wpnew[MAX_PATH];
 if (xutftowcs_path(wpold, pold) < 0 || xutftowcs_path(wpnew, pnew) < 0)
  return -1;





 if (!_wrename(wpold, wpnew))
  return 0;
 if (errno != EEXIST)
  return -1;
repeat:
 if (MoveFileExW(wpold, wpnew, MOVEFILE_REPLACE_EXISTING))
  return 0;

 gle = GetLastError();
 if (gle == ERROR_ACCESS_DENIED &&
     (attrs = GetFileAttributesW(wpnew)) != INVALID_FILE_ATTRIBUTES) {
  if (attrs & FILE_ATTRIBUTE_DIRECTORY) {
   DWORD attrsold = GetFileAttributesW(wpold);
   if (attrsold == INVALID_FILE_ATTRIBUTES ||
       !(attrsold & FILE_ATTRIBUTE_DIRECTORY))
    errno = EISDIR;
   else if (!_wrmdir(wpnew))
    goto repeat;
   return -1;
  }
  if ((attrs & FILE_ATTRIBUTE_READONLY) &&
      SetFileAttributesW(wpnew, attrs & ~FILE_ATTRIBUTE_READONLY)) {
   if (MoveFileExW(wpold, wpnew, MOVEFILE_REPLACE_EXISTING))
    return 0;
   gle = GetLastError();

   SetFileAttributesW(wpnew, attrs);
  }
 }
 if (tries < ARRAY_SIZE(delay) && gle == ERROR_ACCESS_DENIED) {







  Sleep(delay[tries]);
  tries++;
  goto repeat;
 }
 if (gle == ERROR_ACCESS_DENIED &&
        ask_yes_no_if_possible("Rename from '%s' to '%s' failed. "
         "Should I try again?", pold, pnew))
  goto repeat;

 errno = EACCES;
 return -1;
}
