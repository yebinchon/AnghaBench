
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char wchar_t ;
typedef int fontFamily ;
typedef int cfi ;
struct TYPE_7__ {int dll; } ;
struct TYPE_6__ {int cbSize; int FontFamily; } ;
typedef int LPVOID ;
typedef int HKEY ;
typedef int DWORD ;
typedef TYPE_1__ CONSOLE_FONT_INFOEX ;


 int BOOL ;
 int DECLARE_PROC_ADDR (int ,int ,scalar_t__ (*) (int ,int ,TYPE_1__*),int ,int ,int ) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetCurrentConsoleFontEx (int ,int ,TYPE_1__*) ;
 int HANDLE ;
 int HKEY_CURRENT_USER ;
 scalar_t__ INIT_PROC_ADDR (scalar_t__ (*) (int ,int ,TYPE_1__*)) ;
 int KEY_READ ;
 int PCONSOLE_FONT_INFOEX ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 int RegQueryValueExA (int ,char*,int *,int *,int ,int*) ;
 int TMPF_TRUETYPE ;
 int WriteConsoleW (int ,char const*,int ,int*,int *) ;
 int console ;
 TYPE_2__ kernel32 ;
 int non_ascii_used ;
 int wcslen (char const*) ;

__attribute__((used)) static void warn_if_raster_font(void)
{
 DWORD fontFamily = 0;
 DECLARE_PROC_ADDR(kernel32.dll, BOOL, GetCurrentConsoleFontEx,
   HANDLE, BOOL, PCONSOLE_FONT_INFOEX);


 if (!non_ascii_used)
  return;


 if (INIT_PROC_ADDR(GetCurrentConsoleFontEx)) {
  CONSOLE_FONT_INFOEX cfi;
  cfi.cbSize = sizeof(cfi);
  if (GetCurrentConsoleFontEx(console, 0, &cfi))
   fontFamily = cfi.FontFamily;
 } else {

  HKEY hkey;
  if (ERROR_SUCCESS == RegOpenKeyExA(HKEY_CURRENT_USER, "Console",
    0, KEY_READ, &hkey)) {
   DWORD size = sizeof(fontFamily);
   RegQueryValueExA(hkey, "FontFamily", ((void*)0), ((void*)0),
     (LPVOID) &fontFamily, &size);
   RegCloseKey(hkey);
  }
 }

 if (!(fontFamily & TMPF_TRUETYPE)) {
  const wchar_t *msg = L"\nWarning: Your console font probably "
   L"doesn\'t support Unicode. If you experience strange "
   L"characters in the output, consider switching to a "
   L"TrueType font such as Consolas!\n";
  DWORD dummy;
  WriteConsoleW(console, msg, wcslen(msg), &dummy, ((void*)0));
 }
}
