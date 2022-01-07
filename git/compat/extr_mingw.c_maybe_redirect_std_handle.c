
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ARRAY_SIZE (int *) ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int *,scalar_t__,int ,int *,scalar_t__,scalar_t__,int *) ;
 scalar_t__ GetEnvironmentVariableW (int const*,int *,scalar_t__) ;
 scalar_t__ GetStdHandle (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 scalar_t__ OPEN_ALWAYS ;
 scalar_t__ OPEN_EXISTING ;
 int O_BINARY ;
 scalar_t__ STD_ERROR_HANDLE ;
 scalar_t__ STD_OUTPUT_HANDLE ;
 int SetEnvironmentVariableW (int const*,int *) ;
 int SetStdHandle (scalar_t__,scalar_t__) ;
 int _open_osfhandle (intptr_t,int ) ;
 int close (int) ;
 int dup2 (int,int) ;
 int wcscmp (int *,char*) ;

__attribute__((used)) static void maybe_redirect_std_handle(const wchar_t *key, DWORD std_id, int fd,
          DWORD desired_access, DWORD flags)
{
 DWORD create_flag = fd ? OPEN_ALWAYS : OPEN_EXISTING;
 wchar_t buf[MAX_PATH];
 DWORD max = ARRAY_SIZE(buf);
 HANDLE handle;
 DWORD ret = GetEnvironmentVariableW(key, buf, max);

 if (!ret || ret >= max)
  return;


 SetEnvironmentVariableW(key, ((void*)0));
 if (!wcscmp(buf, L"off")) {
  close(fd);
  handle = GetStdHandle(std_id);
  if (handle != INVALID_HANDLE_VALUE)
   CloseHandle(handle);
  return;
 }
 if (std_id == STD_ERROR_HANDLE && !wcscmp(buf, L"2>&1")) {
  handle = GetStdHandle(STD_OUTPUT_HANDLE);
  if (handle == INVALID_HANDLE_VALUE) {
   close(fd);
   handle = GetStdHandle(std_id);
   if (handle != INVALID_HANDLE_VALUE)
    CloseHandle(handle);
  } else {
   int new_fd = _open_osfhandle((intptr_t)handle, O_BINARY);
   SetStdHandle(std_id, handle);
   dup2(new_fd, fd);

  }
  return;
 }
 handle = CreateFileW(buf, desired_access, 0, ((void*)0), create_flag,
        flags, ((void*)0));
 if (handle != INVALID_HANDLE_VALUE) {
  int new_fd = _open_osfhandle((intptr_t)handle, O_BINARY);
  SetStdHandle(std_id, handle);
  dup2(new_fd, fd);
  close(new_fd);
 }
}
