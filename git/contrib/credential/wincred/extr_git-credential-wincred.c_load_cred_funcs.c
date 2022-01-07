
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CredWriteWT ;
typedef scalar_t__ CredFreeT ;
typedef scalar_t__ CredEnumerateWT ;
typedef scalar_t__ CredDeleteWT ;


 scalar_t__ CredDeleteW ;
 scalar_t__ CredEnumerateW ;
 scalar_t__ CredFree ;
 scalar_t__ CredWriteW ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LOAD_LIBRARY_SEARCH_SYSTEM32 ;
 int LoadLibraryExA (char*,int *,int ) ;
 int advapi ;
 int die (char*) ;

__attribute__((used)) static void load_cred_funcs(void)
{

 advapi = LoadLibraryExA("advapi32.dll", ((void*)0),
    LOAD_LIBRARY_SEARCH_SYSTEM32);
 if (!advapi)
  die("failed to load advapi32.dll");


 CredWriteW = (CredWriteWT)GetProcAddress(advapi, "CredWriteW");
 CredEnumerateW = (CredEnumerateWT)GetProcAddress(advapi,
     "CredEnumerateW");
 CredFree = (CredFreeT)GetProcAddress(advapi, "CredFree");
 CredDeleteW = (CredDeleteWT)GetProcAddress(advapi, "CredDeleteW");
 if (!CredWriteW || !CredEnumerateW || !CredFree || !CredDeleteW)
  die("failed to load functions");
}
