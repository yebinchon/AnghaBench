
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* UserName; int TargetName; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ CREDENTIALW ;


 char* host ;
 scalar_t__ match_part (int *,char*,char*) ;
 scalar_t__ match_part_last (int *,scalar_t__,char*) ;
 char* path ;
 char* protocol ;
 scalar_t__ wcscmp (scalar_t__,char*) ;
 scalar_t__ wusername ;

__attribute__((used)) static int match_cred(const CREDENTIALW *cred)
{
 LPCWSTR target = cred->TargetName;
 if (wusername && wcscmp(wusername, cred->UserName ? cred->UserName : L""))
  return 0;

 return match_part(&target, L"git", L":") &&
  match_part(&target, protocol, L"://") &&
  match_part_last(&target, wusername, L"@") &&
  match_part(&target, host, L"/") &&
  match_part(&target, path, L"");
}
