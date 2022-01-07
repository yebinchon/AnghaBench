
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct push_info {struct push_info* dest; } ;


 int free (struct push_info*) ;

__attribute__((used)) static void clear_push_info(void *util, const char *string)
{
 struct push_info *info = util;
 free(info->dest);
 free(info);
}
