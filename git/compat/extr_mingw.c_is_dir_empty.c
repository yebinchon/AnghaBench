
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_NO_MORE_FILES ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileW (int *,TYPE_1__*) ;
 int FindNextFileW (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int wcscat (int *,char*) ;
 int wcscmp (int ,char*) ;
 int wcscpy (int *,int const*) ;

__attribute__((used)) static int is_dir_empty(const wchar_t *wpath)
{
 WIN32_FIND_DATAW findbuf;
 HANDLE handle;
 wchar_t wbuf[MAX_PATH + 2];
 wcscpy(wbuf, wpath);
 wcscat(wbuf, L"\\*");
 handle = FindFirstFileW(wbuf, &findbuf);
 if (handle == INVALID_HANDLE_VALUE)
  return GetLastError() == ERROR_NO_MORE_FILES;

 while (!wcscmp(findbuf.cFileName, L".") ||
   !wcscmp(findbuf.cFileName, L".."))
  if (!FindNextFileW(handle, &findbuf)) {
   DWORD err = GetLastError();
   FindClose(handle);
   return err == ERROR_NO_MORE_FILES;
  }
 FindClose(handle);
 return 0;
}
