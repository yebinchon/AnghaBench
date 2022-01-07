
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwmbt_firmware {scalar_t__ buf; scalar_t__ fwname; } ;


 int free (scalar_t__) ;
 int memset (struct iwmbt_firmware*,int ,int) ;

void
iwmbt_fw_free(struct iwmbt_firmware *fw)
{
 if (fw->fwname)
  free(fw->fwname);
 if (fw->buf)
  free(fw->buf);
 memset(fw, 0, sizeof(*fw));
}
