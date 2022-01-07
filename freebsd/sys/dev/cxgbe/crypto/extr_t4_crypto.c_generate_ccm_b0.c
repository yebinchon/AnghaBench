
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct cryptodesc {int crd_len; } ;


 int CCM_B0_SIZE ;
 int CCM_CBC_BLOCK_LEN ;
 int htobe16 (scalar_t__) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static void
generate_ccm_b0(struct cryptodesc *crda, struct cryptodesc *crde,
    u_int hash_size_in_response, const char *iv, char *b0)
{
 u_int i, payload_len;


 memcpy(b0, iv, CCM_B0_SIZE);


 b0[0] |= (((hash_size_in_response - 2) / 2) << 3);


 payload_len = crde->crd_len;
 for (i = 0; i < iv[0]; i++) {
  b0[CCM_CBC_BLOCK_LEN - 1 - i] = payload_len;
  payload_len >>= 8;
 }







 if (crda->crd_len != 0) {
  b0[0] |= (1 << 6);
  *(uint16_t *)(b0 + CCM_B0_SIZE) = htobe16(crda->crd_len);
 }
}
