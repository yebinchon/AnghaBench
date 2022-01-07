
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int string; } ;


 int argv_array_pushf (int *,char*,int ) ;
 int basename (int ) ;
 int repack ;

__attribute__((used)) static int keep_one_pack(struct string_list_item *item, void *data)
{
 argv_array_pushf(&repack, "--keep-pack=%s", basename(item->string));
 return 0;
}
