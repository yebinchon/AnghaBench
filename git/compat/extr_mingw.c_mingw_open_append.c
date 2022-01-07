
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int const*,int ,int,int *,int ,int ,int *) ;
 int ENOSYS ;
 int FILE_APPEND_DATA ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_ALWAYS ;
 int OPEN_EXISTING ;
 int O_APPEND ;
 int O_BINARY ;
 int O_CREAT ;
 int O_WRONLY ;
 int _open_osfhandle (intptr_t,int ) ;
 int err_win_to_posix (int ) ;
 int errno ;

__attribute__((used)) static int mingw_open_append(wchar_t const *wfilename, int oflags, ...)
{
 HANDLE handle;
 int fd;
 DWORD create = (oflags & O_CREAT) ? OPEN_ALWAYS : OPEN_EXISTING;


 if ((oflags & ~O_CREAT) != (O_WRONLY | O_APPEND))
  return errno = ENOSYS, -1;





 handle = CreateFileW(wfilename, FILE_APPEND_DATA,
   FILE_SHARE_WRITE | FILE_SHARE_READ,
   ((void*)0), create, FILE_ATTRIBUTE_NORMAL, ((void*)0));
 if (handle == INVALID_HANDLE_VALUE)
  return errno = err_win_to_posix(GetLastError()), -1;







 fd = _open_osfhandle((intptr_t)handle, O_BINARY);
 if (fd < 0)
  CloseHandle(handle);
 return fd;
}
