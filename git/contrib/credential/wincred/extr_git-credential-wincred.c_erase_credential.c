
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Type; int TargetName; } ;
typedef int DWORD ;
typedef TYPE_1__ CREDENTIALW ;


 int CredDeleteW (int ,int ,int ) ;
 int CredEnumerateW (char*,int ,int*,TYPE_1__***) ;
 int CredFree (TYPE_1__**) ;
 scalar_t__ match_cred (TYPE_1__*) ;

__attribute__((used)) static void erase_credential(void)
{
 CREDENTIALW **creds;
 DWORD num_creds;
 int i;

 if (!CredEnumerateW(L"git:*", 0, &num_creds, &creds))
  return;

 for (i = 0; i < num_creds; ++i) {
  if (match_cred(creds[i]))
   CredDeleteW(creds[i]->TargetName, creds[i]->Type, 0);
 }

 CredFree(creds);
}
