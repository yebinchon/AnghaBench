
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwSize; scalar_t__ th32ProcessID; } ;
typedef TYPE_1__ PROCESSENTRY32 ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ Process32First (int ,TYPE_1__*) ;
 scalar_t__ Process32Next (int ,TYPE_1__*) ;

__attribute__((used)) static int find_pid(DWORD pid, HANDLE hSnapshot, PROCESSENTRY32 *pe32)
{
 pe32->dwSize = sizeof(PROCESSENTRY32);

 if (Process32First(hSnapshot, pe32)) {
  do {
   if (pe32->th32ProcessID == pid)
    return 1;
  } while (Process32Next(hSnapshot, pe32));
 }
 return 0;
}
