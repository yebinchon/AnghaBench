
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int dummy; } ;


 struct patch* PATH_TO_BE_DELETED ;

__attribute__((used)) static int to_be_deleted(struct patch *patch)
{
 return patch == PATH_TO_BE_DELETED;
}
