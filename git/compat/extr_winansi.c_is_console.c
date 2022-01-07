
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wAttributes; } ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef TYPE_1__ CONSOLE_SCREEN_BUFFER_INFO ;


 int FD_CONSOLE ;
 scalar_t__ FILE_TYPE_CHAR ;
 int GetConsoleMode (scalar_t__,int *) ;
 int GetConsoleScreenBufferInfo (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetFileType (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ _get_osfhandle (int) ;
 scalar_t__ attr ;
 scalar_t__ console ;
 int * fd_is_interactive ;
 scalar_t__ negative ;
 scalar_t__ plain_attr ;

__attribute__((used)) static int is_console(int fd)
{
 CONSOLE_SCREEN_BUFFER_INFO sbi;
 DWORD mode;
 HANDLE hcon;

 static int initialized = 0;


 hcon = (HANDLE) _get_osfhandle(fd);
 if (hcon == INVALID_HANDLE_VALUE)
  return 0;


 if (GetFileType(hcon) != FILE_TYPE_CHAR)
  return 0;


 if (!fd) {
  if (!GetConsoleMode(hcon, &mode))
   return 0;






  sbi.wAttributes = 0;
 } else if (!GetConsoleScreenBufferInfo(hcon, &sbi))
  return 0;

 if (fd >= 0 && fd <= 2)
  fd_is_interactive[fd] |= FD_CONSOLE;


 if (!initialized) {
  console = hcon;
  attr = plain_attr = sbi.wAttributes;
  negative = 0;
  initialized = 1;
 }

 return 1;
}
