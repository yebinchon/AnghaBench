
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
struct iwm_fw_img {int dummy; } ;


 int iwm_alloc_fw_paging_mem (struct iwm_softc*,struct iwm_fw_img const*) ;
 int iwm_fill_paging_mem (struct iwm_softc*,struct iwm_fw_img const*) ;

int
iwm_save_fw_paging(struct iwm_softc *sc, const struct iwm_fw_img *fw)
{
 int ret;

 ret = iwm_alloc_fw_paging_mem(sc, fw);
 if (ret)
  return ret;

 return iwm_fill_paging_mem(sc, fw);
}
