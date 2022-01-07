
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct adapter {int dummy; } ;


 int FIRMWARE_UNLOAD ;
 int firmware_put (struct firmware const*,int ) ;

__attribute__((used)) static void
unload_fw_module(struct adapter *sc, const struct firmware *dcfg,
    const struct firmware *fw)
{

 if (fw != ((void*)0))
  firmware_put(fw, FIRMWARE_UNLOAD);
 if (dcfg != ((void*)0))
  firmware_put(dcfg, FIRMWARE_UNLOAD);
}
