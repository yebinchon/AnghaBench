
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int wcsncmp (char*,char*,int) ;
 int wcsnicmp (char*,char*,int) ;

__attribute__((used)) static wchar_t *normalize_ntpath(wchar_t *wbuf)
{
 int i;

 if (wbuf[0] == '\\') {

  if (!wcsncmp(wbuf, L"\\??\\", 4) ||
      !wcsncmp(wbuf, L"\\\\?\\", 4))
   wbuf += 4;
  else if (!wcsnicmp(wbuf, L"\\DosDevices\\", 12))
   wbuf += 12;

  if (!wcsnicmp(wbuf, L"UNC\\", 4)) {
   wbuf += 2;
   *wbuf = '\\';
  }
 }

 for (i = 0; wbuf[i]; i++)
  if (wbuf[i] == '\\')
   wbuf[i] = '/';
 return wbuf;
}
