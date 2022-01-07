
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;






__attribute__((used)) static inline int
sctp_get_hmac_block_len(uint16_t hmac_algo)
{
 switch (hmac_algo) {
 case 129:
  return (64);
 case 128:
  return (64);
 case 130:
 default:

  return (0);
 }
}
