
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct g_part_table {int dummy; } ;


 int ebr_set_chs (struct g_part_table*,scalar_t__,int*,int*,int*) ;
 int le32enc (int*,scalar_t__) ;

__attribute__((used)) static void
ebr_entry_link(struct g_part_table *table, uint32_t start, uint32_t end,
   u_char *buf)
{

 buf[0] = 0 ;
 ebr_set_chs(table, start, &buf[3] , &buf[1] ,
     &buf[2] );
 buf[4] = 5 ;
 ebr_set_chs(table, end, &buf[7] , &buf[5] ,
     &buf[6] );
 le32enc(buf + 8, start);
 le32enc(buf + 12, end - start + 1);
}
