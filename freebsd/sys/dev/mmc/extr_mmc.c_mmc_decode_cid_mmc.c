
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mmc_cid {int mdt_year; void* mdt_month; void* psn; void* prv; void** pnm; void* oid; void* mid; } ;


 int memset (struct mmc_cid*,int ,int) ;
 void* mmc_get_bits (int *,int,int,int) ;

__attribute__((used)) static void
mmc_decode_cid_mmc(uint32_t *raw_cid, struct mmc_cid *cid, bool is_4_41p)
{
 int i;


 memset(cid, 0, sizeof(*cid));
 cid->mid = mmc_get_bits(raw_cid, 128, 120, 8);
 cid->oid = mmc_get_bits(raw_cid, 128, 104, 8);
 for (i = 0; i < 6; i++)
  cid->pnm[i] = mmc_get_bits(raw_cid, 128, 96 - i * 8, 8);
 cid->pnm[6] = 0;
 cid->prv = mmc_get_bits(raw_cid, 128, 48, 8);
 cid->psn = mmc_get_bits(raw_cid, 128, 16, 32);
 cid->mdt_month = mmc_get_bits(raw_cid, 128, 12, 4);
 cid->mdt_year = mmc_get_bits(raw_cid, 128, 8, 4);
 if (is_4_41p)
  cid->mdt_year += 2013;
 else
  cid->mdt_year += 1997;
}
