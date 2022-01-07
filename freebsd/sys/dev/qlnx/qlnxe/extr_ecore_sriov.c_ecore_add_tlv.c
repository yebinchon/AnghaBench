
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
typedef int u16 ;
struct channel_tlv {int type; int length; } ;



void *ecore_add_tlv(u8 **offset, u16 type, u16 length)
{
 struct channel_tlv *tl = (struct channel_tlv *)*offset;

 tl->type = type;
 tl->length = length;


 *offset += length;


 return *offset - length;
}
