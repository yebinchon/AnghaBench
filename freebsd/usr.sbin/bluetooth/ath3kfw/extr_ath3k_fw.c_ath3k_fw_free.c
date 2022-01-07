
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath3k_firmware {scalar_t__ buf; scalar_t__ fwname; } ;


 int bzero (struct ath3k_firmware*,int) ;
 int free (scalar_t__) ;

void
ath3k_fw_free(struct ath3k_firmware *fw)
{
 if (fw->fwname)
  free(fw->fwname);
 if (fw->buf)
  free(fw->buf);
 bzero(fw, sizeof(*fw));
}
