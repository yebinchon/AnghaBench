
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int G_LKPTBLQUEUE0 (int ) ;
 int G_LKPTBLQUEUE1 (int ) ;
 int RSS_NENTRIES ;
 int rd_rss_row (struct adapter*,int,int *) ;

int t4_read_rss(struct adapter *adapter, u16 *map)
{
 u32 val;
 int i, ret;

 for (i = 0; i < RSS_NENTRIES / 2; ++i) {
  ret = rd_rss_row(adapter, i, &val);
  if (ret)
   return ret;
  *map++ = G_LKPTBLQUEUE0(val);
  *map++ = G_LKPTBLQUEUE1(val);
 }
 return 0;
}
