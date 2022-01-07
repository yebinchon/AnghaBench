
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct g_part_bsd64_entry {scalar_t__ fstype; int type_uuid; } ;


 scalar_t__ EQUUID (int *,int *) ;
 scalar_t__ FS_SWAP ;
 int bsd64_uuid_dfbsd_swap ;
 int bsd64_uuid_freebsd_swap ;

__attribute__((used)) static int
g_part_bsd64_dumpto(struct g_part_table *table, struct g_part_entry *baseentry)
{
 struct g_part_bsd64_entry *entry;


 entry = (struct g_part_bsd64_entry *)baseentry;
 if (entry->fstype == FS_SWAP ||
     EQUUID(&entry->type_uuid, &bsd64_uuid_dfbsd_swap) ||
     EQUUID(&entry->type_uuid, &bsd64_uuid_freebsd_swap))
  return (1);
 return (0);
}
