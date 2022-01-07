
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 int MEM_MC ;
 int MEM_MC1 ;
 int rounddown2 (int,int) ;
 int roundup2 (int,int) ;
 int t4_edc_read (struct adapter*,int,int,int *,int *) ;
 int t4_mc_read (struct adapter*,int,int,int *,int *) ;

int t4_mem_read(struct adapter *adap, int mtype, u32 addr, u32 len,
  __be32 *buf)
{
 u32 pos, start, end, offset;
 int ret;




 if ((addr & 0x3) || (len & 0x3))
  return -EINVAL;






 start = rounddown2(addr, 64);
 end = roundup2(addr + len, 64);
 offset = (addr - start)/sizeof(__be32);

 for (pos = start; pos < end; pos += 64, offset = 0) {
  __be32 data[16];




  if ((mtype == MEM_MC) || (mtype == MEM_MC1))
   ret = t4_mc_read(adap, mtype - MEM_MC, pos, data, ((void*)0));
  else
   ret = t4_edc_read(adap, mtype, pos, data, ((void*)0));
  if (ret)
   return ret;




  while (offset < 16 && len > 0) {
   *buf++ = data[offset++];
   len -= sizeof(__be32);
  }
 }

 return 0;
}
