
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SecKeychainItemRef ;


 int KEYCHAIN_ARGS ;
 scalar_t__ SecKeychainFindInternetPassword (int ,int ,int *,int *) ;
 int SecKeychainItemDelete (int ) ;
 int host ;
 int protocol ;

__attribute__((used)) static void delete_internet_password(void)
{
 SecKeychainItemRef item;






 if (!protocol || !host)
  return;

 if (SecKeychainFindInternetPassword(KEYCHAIN_ARGS, 0, ((void*)0), &item))
  return;

 SecKeychainItemDelete(item);
}
