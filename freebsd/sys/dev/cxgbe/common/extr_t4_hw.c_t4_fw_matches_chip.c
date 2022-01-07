
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_hdr {scalar_t__ chip; } ;
struct adapter {int dummy; } ;


 int CH_ERR (struct adapter*,char*,scalar_t__,int ) ;
 scalar_t__ FW_HDR_CHIP_T4 ;
 scalar_t__ FW_HDR_CHIP_T5 ;
 scalar_t__ FW_HDR_CHIP_T6 ;
 int chip_id (struct adapter*) ;
 scalar_t__ is_t4 (struct adapter*) ;
 scalar_t__ is_t5 (struct adapter*) ;
 scalar_t__ is_t6 (struct adapter*) ;

__attribute__((used)) static int t4_fw_matches_chip(struct adapter *adap,
         const struct fw_hdr *hdr)
{




 if ((is_t4(adap) && hdr->chip == FW_HDR_CHIP_T4) ||
     (is_t5(adap) && hdr->chip == FW_HDR_CHIP_T5) ||
     (is_t6(adap) && hdr->chip == FW_HDR_CHIP_T6))
  return 1;

 CH_ERR(adap,
  "FW image (%d) is not suitable for this adapter (%d)\n",
  hdr->chip, chip_id(adap));
 return 0;
}
