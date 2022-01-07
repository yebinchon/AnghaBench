
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEYCHAIN_ARGS ;
 int KEYCHAIN_ITEM (int ) ;
 scalar_t__ SecKeychainAddInternetPassword (int ,int ,int *) ;
 int host ;
 int password ;
 int protocol ;
 int username ;

__attribute__((used)) static void add_internet_password(void)
{

 if (!protocol || !host || !username || !password)
  return;

 if (SecKeychainAddInternetPassword(
       KEYCHAIN_ARGS,
       KEYCHAIN_ITEM(password),
       ((void*)0)))
  return;
}
