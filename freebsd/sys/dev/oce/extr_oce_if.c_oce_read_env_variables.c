
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dev; void* enable_hwlro; } ;
typedef TYPE_1__* POCE_SOFTC ;


 scalar_t__ IS_SH (TYPE_1__*) ;
 int device_printf (int ,char*) ;
 int oce_max_rsp_handled ;
 int oce_mbox_nic_query_lro_capabilities (TYPE_1__*,int *,int *) ;
 int oce_rq_buf_size ;
 void* strtol (char*,int *,int) ;

__attribute__((used)) static void
oce_read_env_variables( POCE_SOFTC sc )
{
 char *value = ((void*)0);
 int rc = 0;



        if(value && IS_SH(sc)) {
                sc->enable_hwlro = strtol(value, ((void*)0), 10);
                if(sc->enable_hwlro) {
                        rc = oce_mbox_nic_query_lro_capabilities(sc, ((void*)0), ((void*)0));
                        if(rc) {
                                device_printf(sc->dev, "no hardware lro support\n");
                  device_printf(sc->dev, "software lro enabled\n");
                                sc->enable_hwlro = 0;
                        }else {
                                device_printf(sc->dev, "hardware lro enabled\n");
    oce_max_rsp_handled = 32;
                        }
                }else {
                        device_printf(sc->dev, "software lro enabled\n");
                }
        }else {
                sc->enable_hwlro = 0;
        }



        if(value && IS_SH(sc)) {
                oce_rq_buf_size = strtol(value, ((void*)0), 10);
                switch(oce_rq_buf_size) {
                case 2048:
                case 4096:
                case 9216:
                case 16384:
                        break;

                default:
                        device_printf(sc->dev, " Supported oce_rq_buf_size values are 2K, 4K, 9K, 16K \n");
                        oce_rq_buf_size = 2048;
                }
        }

 return;
}
