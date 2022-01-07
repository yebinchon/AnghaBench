
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int CredentialBlobSize; scalar_t__ CredentialBlob; scalar_t__ UserName; } ;
typedef scalar_t__ LPCWSTR ;
typedef int DWORD ;
typedef TYPE_1__ CREDENTIALW ;


 int CredEnumerateW (char*,int ,int*,TYPE_1__***) ;
 int CredFree (TYPE_1__**) ;
 scalar_t__ match_cred (TYPE_1__*) ;
 int wcslen (scalar_t__) ;
 int write_item (char*,scalar_t__,int) ;

__attribute__((used)) static void get_credential(void)
{
 CREDENTIALW **creds;
 DWORD num_creds;
 int i;

 if (!CredEnumerateW(L"git:*", 0, &num_creds, &creds))
  return;


 for (i = 0; i < num_creds; ++i)
  if (match_cred(creds[i])) {
   write_item("username", creds[i]->UserName,
    creds[i]->UserName ? wcslen(creds[i]->UserName) : 0);
   write_item("password",
    (LPCWSTR)creds[i]->CredentialBlob,
    creds[i]->CredentialBlobSize / sizeof(WCHAR));
   break;
  }

 CredFree(creds);
}
