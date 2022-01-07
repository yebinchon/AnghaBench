
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stash_info {int revision; } ;


 int strbuf_release (int *) ;

__attribute__((used)) static void free_stash_info(struct stash_info *info)
{
 strbuf_release(&info->revision);
}
