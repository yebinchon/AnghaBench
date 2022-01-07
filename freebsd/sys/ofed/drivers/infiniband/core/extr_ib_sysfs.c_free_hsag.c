
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct attribute_group {struct attribute_group** attrs; } ;
struct attribute {struct attribute** attrs; } ;


 int kfree (struct attribute_group*) ;
 int sysfs_remove_group (struct kobject*,struct attribute_group*) ;

__attribute__((used)) static void free_hsag(struct kobject *kobj, struct attribute_group *attr_group)
{
 struct attribute **attr;

 sysfs_remove_group(kobj, attr_group);

 for (attr = attr_group->attrs; *attr; attr++)
  kfree(*attr);
 kfree(attr_group);
}
