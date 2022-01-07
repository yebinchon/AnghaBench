
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_info {int fw_mod_name; int kld_name; } ;
struct firmware {int dummy; } ;
struct adapter {int dev; } ;


 int EINVAL ;
 int ENOENT ;
 int chip_id (struct adapter*) ;
 int device_printf (int ,char*,int ) ;
 struct fw_info* find_fw_info (int ) ;
 struct firmware* firmware_get (int ) ;

__attribute__((used)) static int
load_fw_module(struct adapter *sc, const struct firmware **dcfg,
    const struct firmware **fw)
{
 struct fw_info *fw_info;

 *dcfg = ((void*)0);
 if (fw != ((void*)0))
  *fw = ((void*)0);

 fw_info = find_fw_info(chip_id(sc));
 if (fw_info == ((void*)0)) {
  device_printf(sc->dev,
      "unable to look up firmware information for chip %d.\n",
      chip_id(sc));
  return (EINVAL);
 }

 *dcfg = firmware_get(fw_info->kld_name);
 if (*dcfg != ((void*)0)) {
  if (fw != ((void*)0))
   *fw = firmware_get(fw_info->fw_mod_name);
  return (0);
 }

 return (ENOENT);
}
