
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ BOOL ;


 int GetLastError () ;
 scalar_t__ SetEnvironmentVariableW (int*,int*) ;
 int* calloc (int,int) ;
 int die (char*,int) ;
 int err_win_to_posix (int ) ;
 int errno ;
 int free (int*) ;
 int strlen (char const*) ;
 int* wcschr (int*,int) ;
 int xutftowcs (int*,char const*,int) ;

int mingw_putenv(const char *namevalue)
{
 int size;
 wchar_t *wide, *equal;
 BOOL result;

 if (!namevalue || !*namevalue)
  return 0;

 size = strlen(namevalue) * 2 + 1;
 wide = calloc(size, sizeof(wchar_t));
 if (!wide)
  die("Out of memory, (tried to allocate %u wchar_t's)", size);
 xutftowcs(wide, namevalue, size);
 equal = wcschr(wide, L'=');
 if (!equal)
  result = SetEnvironmentVariableW(wide, ((void*)0));
 else {
  *equal = L'\0';
  result = SetEnvironmentVariableW(wide, equal + 1);
 }
 free(wide);

 if (!result)
  errno = err_win_to_posix(GetLastError());

 return result ? 0 : -1;
}
