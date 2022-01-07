
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refname_hash_entry {int ignore; } ;



__attribute__((used)) static void clear_item(struct refname_hash_entry *item)
{
 item->ignore = 1;
}
