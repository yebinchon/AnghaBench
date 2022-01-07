
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hn_softc {int dummy; } ;
struct hn_nvs_datapath {int nvs_active_path; int nvs_type; } ;
typedef int dp ;


 int HN_NVS_TYPE_SET_DATAPATH ;
 int hn_nvs_req_send (struct hn_softc*,struct hn_nvs_datapath*,int) ;
 int memset (struct hn_nvs_datapath*,int ,int) ;

void
hn_nvs_set_datapath(struct hn_softc *sc, uint32_t path)
{
 struct hn_nvs_datapath dp;

 memset(&dp, 0, sizeof(dp));
 dp.nvs_type = HN_NVS_TYPE_SET_DATAPATH;
 dp.nvs_active_path = path;

 hn_nvs_req_send(sc, &dp, sizeof(dp));
}
