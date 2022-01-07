
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int DWORD ;


 int FILE_ATTRIBUTE_HIDDEN ;
 int GetFileAttributesW (int const*) ;
 int GetLastError () ;
 scalar_t__ SetFileAttributesW (int const*,int) ;
 int err_win_to_posix (int ) ;
 int errno ;

__attribute__((used)) static int set_hidden_flag(const wchar_t *path, int set)
{
 DWORD original = GetFileAttributesW(path), modified;
 if (set)
  modified = original | FILE_ATTRIBUTE_HIDDEN;
 else
  modified = original & ~FILE_ATTRIBUTE_HIDDEN;
 if (original == modified || SetFileAttributesW(path, modified))
  return 0;
 errno = err_win_to_posix(GetLastError());
 return -1;
}
