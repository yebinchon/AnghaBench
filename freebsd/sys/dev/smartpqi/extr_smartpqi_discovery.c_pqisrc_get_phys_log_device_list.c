
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int reportlun_header_t ;
typedef int reportlun_ext_entry_t ;
struct TYPE_9__ {size_t list_length; } ;
struct TYPE_10__ {TYPE_1__ header; } ;
typedef TYPE_2__ reportlun_data_ext_t ;
typedef int report_lun_header ;
typedef int pqisrc_softstate_t ;


 void* BE_32 (size_t) ;
 int DBG_ERR (char*) ;
 int DBG_FUNC (char*) ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 int SA_REPORT_LOG ;
 int SA_REPORT_PHYS ;
 int memcpy (TYPE_2__*,TYPE_2__*,size_t) ;
 int memset (int *,int ,int) ;
 TYPE_2__* os_mem_alloc (int *,size_t) ;
 int os_mem_free (int *,char*,size_t) ;
 int pqisrc_get_physical_logical_luns (int *,int ,TYPE_2__**,size_t*) ;

__attribute__((used)) static int pqisrc_get_phys_log_device_list(pqisrc_softstate_t *softs,
 reportlun_data_ext_t **physical_dev_list,
 reportlun_data_ext_t **logical_dev_list,
 size_t *phys_data_length,
 size_t *log_data_length)
{
 int ret = PQI_STATUS_SUCCESS;
 size_t logical_list_length;
 size_t logdev_data_length;
 size_t data_length;
 reportlun_data_ext_t *local_logdev_list;
 reportlun_data_ext_t *logdev_data;
 reportlun_header_t report_lun_header;


 DBG_FUNC("IN\n");

 ret = pqisrc_get_physical_logical_luns(softs, SA_REPORT_PHYS, physical_dev_list, phys_data_length);
 if (ret) {
  DBG_ERR("report physical LUNs failed");
  return ret;
 }

 ret = pqisrc_get_physical_logical_luns(softs, SA_REPORT_LOG, logical_dev_list, log_data_length);
 if (ret) {
  DBG_ERR("report logical LUNs failed");
  return ret;
 }


 logdev_data = *logical_dev_list;

 if (logdev_data) {
  logical_list_length =
   BE_32(logdev_data->header.list_length);
 } else {
  memset(&report_lun_header, 0, sizeof(report_lun_header));
  logdev_data =
   (reportlun_data_ext_t *)&report_lun_header;
  logical_list_length = 0;
 }

 logdev_data_length = sizeof(reportlun_header_t) +
  logical_list_length;


 local_logdev_list = os_mem_alloc(softs,
         logdev_data_length + sizeof(reportlun_ext_entry_t));
 if (!local_logdev_list) {
  data_length = *log_data_length;
  os_mem_free(softs, (char *)*logical_dev_list, data_length);
  *logical_dev_list = ((void*)0);
  return PQI_STATUS_FAILURE;
 }

 memcpy(local_logdev_list, logdev_data, logdev_data_length);
 memset((uint8_t *)local_logdev_list + logdev_data_length, 0,
  sizeof(reportlun_ext_entry_t));
 local_logdev_list->header.list_length = BE_32(logical_list_length +
       sizeof(reportlun_ext_entry_t));
 data_length = *log_data_length;
 os_mem_free(softs, (char *)*logical_dev_list, data_length);
 *log_data_length = logdev_data_length + sizeof(reportlun_ext_entry_t);
 *logical_dev_list = local_logdev_list;

 DBG_FUNC("OUT\n");

 return ret;
}
