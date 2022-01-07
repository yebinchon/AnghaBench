
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct bmic_host_wellness_driver_version {char* start_tag; char* driver_version_tag; char* driver_version; char* end_tag; int driver_version_length; } ;
typedef int request ;
struct TYPE_6__ {int os_name; } ;
typedef TYPE_1__ pqisrc_softstate_t ;
typedef int pqisrc_raid_req_t ;


 int BMIC_WRITE_HOST_WELLNESS ;
 int DBG_DISC (char*,int) ;
 int DBG_ERR (char*) ;
 int DBG_FUNC (char*) ;
 int LE_16 (int) ;
 int PQISRC_DRIVER_VERSION ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 scalar_t__ RAID_CTLR_LUNID ;
 int memset (int *,int ,int) ;
 struct bmic_host_wellness_driver_version* os_mem_alloc (TYPE_1__*,size_t) ;
 int os_mem_free (TYPE_1__*,char*,size_t) ;
 int pqisrc_build_send_raid_request (TYPE_1__*,int *,struct bmic_host_wellness_driver_version*,size_t,int ,int ,int *,int *) ;
 int strlen (int ) ;
 int strncpy (char*,int ,int) ;

int pqisrc_write_driver_version_to_host_wellness(pqisrc_softstate_t *softs)
{
 int rval = PQI_STATUS_SUCCESS;
 struct bmic_host_wellness_driver_version *host_wellness_driver_ver;
 size_t data_length;
 pqisrc_raid_req_t request;

 DBG_FUNC("IN\n");

 memset(&request, 0, sizeof(request));
 data_length = sizeof(*host_wellness_driver_ver);

 host_wellness_driver_ver = os_mem_alloc(softs, data_length);
 if (!host_wellness_driver_ver) {
  DBG_ERR("failed to allocate memory for host wellness driver_version\n");
  return PQI_STATUS_FAILURE;
 }

 host_wellness_driver_ver->start_tag[0] = '<';
 host_wellness_driver_ver->start_tag[1] = 'H';
 host_wellness_driver_ver->start_tag[2] = 'W';
 host_wellness_driver_ver->start_tag[3] = '>';
 host_wellness_driver_ver->driver_version_tag[0] = 'D';
 host_wellness_driver_ver->driver_version_tag[1] = 'V';
 host_wellness_driver_ver->driver_version_length = LE_16(sizeof(host_wellness_driver_ver->driver_version));
 strncpy(host_wellness_driver_ver->driver_version, softs->os_name,
        sizeof(host_wellness_driver_ver->driver_version));
    if (strlen(softs->os_name) < sizeof(host_wellness_driver_ver->driver_version) ) {
        strncpy(host_wellness_driver_ver->driver_version + strlen(softs->os_name), PQISRC_DRIVER_VERSION,
   sizeof(host_wellness_driver_ver->driver_version) - strlen(softs->os_name));
    } else {
        DBG_DISC("OS name length(%lu) is longer than buffer of driver_version\n",
            strlen(softs->os_name));
    }
 host_wellness_driver_ver->driver_version[sizeof(host_wellness_driver_ver->driver_version) - 1] = '\0';
 host_wellness_driver_ver->end_tag[0] = 'Z';
 host_wellness_driver_ver->end_tag[1] = 'Z';

 rval = pqisrc_build_send_raid_request(softs, &request, host_wellness_driver_ver,data_length,
     BMIC_WRITE_HOST_WELLNESS, 0, (uint8_t *)RAID_CTLR_LUNID, ((void*)0));

 os_mem_free(softs, (char *)host_wellness_driver_ver, data_length);

 DBG_FUNC("OUT");
 return rval;
}
