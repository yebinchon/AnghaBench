
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ CRYPTO_MAX_IMM_TX_PKT_LEN ;
 scalar_t__ SGE_MAX_WR_LEN ;
 scalar_t__ roundup2 (scalar_t__,int) ;

__attribute__((used)) static bool
ccr_use_imm_data(u_int transhdr_len, u_int input_len)
{

 if (input_len > CRYPTO_MAX_IMM_TX_PKT_LEN)
  return (0);
 if (roundup2(transhdr_len, 16) + roundup2(input_len, 16) >
     SGE_MAX_WR_LEN)
  return (0);
 return (1);
}
