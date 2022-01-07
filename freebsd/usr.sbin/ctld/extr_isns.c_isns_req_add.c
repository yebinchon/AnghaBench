
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct isns_tlv {int * it_value; int it_length; int it_tag; } ;
struct isns_req {size_t ir_usedlen; int * ir_buf; } ;


 int be32enc (int ,int) ;
 int isns_req_getspace (struct isns_req*,int) ;
 int memcpy (int *,void const*,int) ;
 int memset (int *,int ,int) ;

void
isns_req_add(struct isns_req *req, uint32_t tag, uint32_t len,
    const void *value)
{
 struct isns_tlv *tlv;
 uint32_t vlen;

 vlen = len + ((len & 3) ? (4 - (len & 3)) : 0);
 isns_req_getspace(req, sizeof(*tlv) + vlen);
 tlv = (struct isns_tlv *)&req->ir_buf[req->ir_usedlen];
 be32enc(tlv->it_tag, tag);
 be32enc(tlv->it_length, vlen);
 memcpy(tlv->it_value, value, len);
 if (vlen != len)
  memset(&tlv->it_value[len], 0, vlen - len);
 req->ir_usedlen += sizeof(*tlv) + vlen;
}
