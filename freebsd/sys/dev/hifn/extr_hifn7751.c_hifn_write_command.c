
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct hifn_command {int base_masks; int src_mapsize; int sloplen; int dst_mapsize; int mac_masks; int cry_masks; int cklen; int iv; int ck; int mac; TYPE_2__* enccrd; TYPE_1__* maccrd; } ;
struct TYPE_8__ {scalar_t__ reserved; void* header_skip; void* masks; void* source_count; } ;
typedef TYPE_3__ hifn_mac_command_t ;
struct TYPE_9__ {scalar_t__ reserved; void* header_skip; void* masks; void* source_count; } ;
typedef TYPE_4__ hifn_crypt_command_t ;
struct TYPE_10__ {void* session_num; void* total_dest_count; void* total_source_count; void* masks; } ;
typedef TYPE_5__ hifn_base_command_t ;
struct TYPE_7__ {int crd_len; int crd_skip; } ;
struct TYPE_6__ {int crd_len; int crd_skip; } ;


 int HIFN_3DES_KEY_LENGTH ;
 int HIFN_AES_IV_LENGTH ;
 int HIFN_BASE_CMD_CRYPT ;
 int HIFN_BASE_CMD_DSTLEN_M ;
 int HIFN_BASE_CMD_DSTLEN_S ;
 int HIFN_BASE_CMD_LENMASK_LO ;
 int HIFN_BASE_CMD_MAC ;
 int HIFN_BASE_CMD_SRCLEN_M ;
 int HIFN_BASE_CMD_SRCLEN_S ;



 int HIFN_CRYPT_CMD_ALG_MASK ;

 int HIFN_CRYPT_CMD_NEW_IV ;
 int HIFN_CRYPT_CMD_NEW_KEY ;
 int HIFN_CRYPT_CMD_SRCLEN_M ;
 int HIFN_CRYPT_CMD_SRCLEN_S ;
 int HIFN_DES_KEY_LENGTH ;
 int HIFN_IV_LENGTH ;
 int HIFN_MAC_CMD_NEW_KEY ;
 int HIFN_MAC_CMD_SRCLEN_M ;
 int HIFN_MAC_CMD_SRCLEN_S ;
 int HIFN_MAC_KEY_LENGTH ;
 int MIN (int,int) ;
 int bcopy (int ,int *,int) ;
 int bzero (int *,int) ;
 void* htole16 (int) ;

__attribute__((used)) static u_int
hifn_write_command(struct hifn_command *cmd, u_int8_t *buf)
{
 u_int8_t *buf_pos;
 hifn_base_command_t *base_cmd;
 hifn_mac_command_t *mac_cmd;
 hifn_crypt_command_t *cry_cmd;
 int using_mac, using_crypt, len, ivlen;
 u_int32_t dlen, slen;

 buf_pos = buf;
 using_mac = cmd->base_masks & HIFN_BASE_CMD_MAC;
 using_crypt = cmd->base_masks & HIFN_BASE_CMD_CRYPT;

 base_cmd = (hifn_base_command_t *)buf_pos;
 base_cmd->masks = htole16(cmd->base_masks);
 slen = cmd->src_mapsize;
 if (cmd->sloplen)
  dlen = cmd->dst_mapsize - cmd->sloplen + sizeof(u_int32_t);
 else
  dlen = cmd->dst_mapsize;
 base_cmd->total_source_count = htole16(slen & HIFN_BASE_CMD_LENMASK_LO);
 base_cmd->total_dest_count = htole16(dlen & HIFN_BASE_CMD_LENMASK_LO);
 dlen >>= 16;
 slen >>= 16;
 base_cmd->session_num = htole16(
     ((slen << HIFN_BASE_CMD_SRCLEN_S) & HIFN_BASE_CMD_SRCLEN_M) |
     ((dlen << HIFN_BASE_CMD_DSTLEN_S) & HIFN_BASE_CMD_DSTLEN_M));
 buf_pos += sizeof(hifn_base_command_t);

 if (using_mac) {
  mac_cmd = (hifn_mac_command_t *)buf_pos;
  dlen = cmd->maccrd->crd_len;
  mac_cmd->source_count = htole16(dlen & 0xffff);
  dlen >>= 16;
  mac_cmd->masks = htole16(cmd->mac_masks |
      ((dlen << HIFN_MAC_CMD_SRCLEN_S) & HIFN_MAC_CMD_SRCLEN_M));
  mac_cmd->header_skip = htole16(cmd->maccrd->crd_skip);
  mac_cmd->reserved = 0;
  buf_pos += sizeof(hifn_mac_command_t);
 }

 if (using_crypt) {
  cry_cmd = (hifn_crypt_command_t *)buf_pos;
  dlen = cmd->enccrd->crd_len;
  cry_cmd->source_count = htole16(dlen & 0xffff);
  dlen >>= 16;
  cry_cmd->masks = htole16(cmd->cry_masks |
      ((dlen << HIFN_CRYPT_CMD_SRCLEN_S) & HIFN_CRYPT_CMD_SRCLEN_M));
  cry_cmd->header_skip = htole16(cmd->enccrd->crd_skip);
  cry_cmd->reserved = 0;
  buf_pos += sizeof(hifn_crypt_command_t);
 }

 if (using_mac && cmd->mac_masks & HIFN_MAC_CMD_NEW_KEY) {
  bcopy(cmd->mac, buf_pos, HIFN_MAC_KEY_LENGTH);
  buf_pos += HIFN_MAC_KEY_LENGTH;
 }

 if (using_crypt && cmd->cry_masks & HIFN_CRYPT_CMD_NEW_KEY) {
  switch (cmd->cry_masks & HIFN_CRYPT_CMD_ALG_MASK) {
  case 131:
   bcopy(cmd->ck, buf_pos, HIFN_3DES_KEY_LENGTH);
   buf_pos += HIFN_3DES_KEY_LENGTH;
   break;
  case 129:
   bcopy(cmd->ck, buf_pos, HIFN_DES_KEY_LENGTH);
   buf_pos += HIFN_DES_KEY_LENGTH;
   break;
  case 128:
   len = 256;
   do {
    int clen;

    clen = MIN(cmd->cklen, len);
    bcopy(cmd->ck, buf_pos, clen);
    len -= clen;
    buf_pos += clen;
   } while (len > 0);
   bzero(buf_pos, 4);
   buf_pos += 4;
   break;
  case 130:




   bcopy(cmd->ck, buf_pos, cmd->cklen);
   buf_pos += cmd->cklen;
   break;
  }
 }

 if (using_crypt && cmd->cry_masks & HIFN_CRYPT_CMD_NEW_IV) {
  switch (cmd->cry_masks & HIFN_CRYPT_CMD_ALG_MASK) {
  case 130:
   ivlen = HIFN_AES_IV_LENGTH;
   break;
  default:
   ivlen = HIFN_IV_LENGTH;
   break;
  }
  bcopy(cmd->iv, buf_pos, ivlen);
  buf_pos += ivlen;
 }

 if ((cmd->base_masks & (HIFN_BASE_CMD_MAC|HIFN_BASE_CMD_CRYPT)) == 0) {
  bzero(buf_pos, 8);
  buf_pos += 8;
 }

 return (buf_pos - buf);
}
