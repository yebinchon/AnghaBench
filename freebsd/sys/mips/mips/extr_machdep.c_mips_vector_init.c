
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MIPS_CACHE_ERR_EXC_VEC ;
 scalar_t__ MIPS_GEN_EXC_VEC ;
 int MIPS_SR_BEV ;
 scalar_t__ MIPS_UTLB_MISS_EXC_VEC ;
 scalar_t__ MIPS_XTLB_MISS_EXC_VEC ;
 int MipsCache ;
 int MipsCacheEnd ;
 int MipsException ;
 int MipsExceptionEnd ;
 int MipsTLBMiss ;
 int MipsTLBMissEnd ;
 int MipsWaitEnd ;
 int MipsWaitStart ;
 int bcopy (int,void*,int) ;
 int mips_dcache_wbinv_all () ;
 int mips_icache_sync_all () ;
 int mips_rd_status () ;
 int mips_wr_status (int) ;
 int panic (char*) ;
 int set_intr_mask (int ) ;

void
mips_vector_init(void)
{




 if (MipsWaitEnd - MipsWaitStart != 16)
  panic("startup: MIPS wait region not correct");



 if (MipsTLBMissEnd - MipsTLBMiss > 0x80)
  panic("startup: UTLB code too large");

 if (MipsCacheEnd - MipsCache > 0x80)
  panic("startup: Cache error code too large");

 bcopy(MipsTLBMiss, (void *)MIPS_UTLB_MISS_EXC_VEC,
       MipsTLBMissEnd - MipsTLBMiss);
 bcopy(MipsException, (void *)MIPS_GEN_EXC_VEC,
       MipsExceptionEnd - MipsException);

 bcopy(MipsCache, (void *)MIPS_CACHE_ERR_EXC_VEC,
       MipsCacheEnd - MipsCache);




 mips_icache_sync_all();
 mips_dcache_wbinv_all();





 set_intr_mask(0);


 mips_wr_status(mips_rd_status() & ~MIPS_SR_BEV);
}
