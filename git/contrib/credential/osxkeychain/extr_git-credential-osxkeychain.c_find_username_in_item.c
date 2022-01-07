
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int length; int data; int tag; } ;
struct TYPE_5__ {int count; TYPE_2__* attr; } ;
typedef int SecKeychainItemRef ;
typedef TYPE_1__ SecKeychainAttributeList ;
typedef TYPE_2__ SecKeychainAttribute ;


 scalar_t__ SecKeychainItemCopyContent (int ,int *,TYPE_1__*,int *,int *) ;
 int SecKeychainItemFreeContent (TYPE_1__*,int *) ;
 int kSecAccountItemAttr ;
 int write_item (char*,int ,int ) ;

__attribute__((used)) static void find_username_in_item(SecKeychainItemRef item)
{
 SecKeychainAttributeList list;
 SecKeychainAttribute attr;

 list.count = 1;
 list.attr = &attr;
 attr.tag = kSecAccountItemAttr;

 if (SecKeychainItemCopyContent(item, ((void*)0), &list, ((void*)0), ((void*)0)))
  return;

 write_item("username", attr.data, attr.length);
 SecKeychainItemFreeContent(&list, ((void*)0));
}
