
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int SecKeychainItemRef ;


 int KEYCHAIN_ARGS ;
 scalar_t__ SecKeychainFindInternetPassword (int ,int *,void**,int *) ;
 int SecKeychainItemFreeContent (int *,void*) ;
 int find_username_in_item (int ) ;
 int username ;
 int write_item (char*,void*,int ) ;

__attribute__((used)) static void find_internet_password(void)
{
 void *buf;
 UInt32 len;
 SecKeychainItemRef item;

 if (SecKeychainFindInternetPassword(KEYCHAIN_ARGS, &len, &buf, &item))
  return;

 write_item("password", buf, len);
 if (!username)
  find_username_in_item(item);

 SecKeychainItemFreeContent(((void*)0), buf);
}
