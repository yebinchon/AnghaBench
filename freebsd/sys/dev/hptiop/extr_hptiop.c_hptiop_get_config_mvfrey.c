
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int size; scalar_t__ type; } ;
struct hpt_iop_request_get_config {int sdram_size; int max_devices; int data_transfer_length; int request_size; int max_requests; int alignment_mask; int max_sg_count; int firmware_version; int interface_version; TYPE_3__ header; } ;
struct TYPE_4__ {struct hpt_iop_request_get_config* config; } ;
struct TYPE_5__ {TYPE_1__ mvfrey; } ;
struct hpt_iop_hba {TYPE_2__ u; } ;


 scalar_t__ IOP_REQUEST_TYPE_GET_CONFIG ;
 int KdPrint (char*) ;

__attribute__((used)) static int hptiop_get_config_mvfrey(struct hpt_iop_hba * hba,
    struct hpt_iop_request_get_config * config)
{
 struct hpt_iop_request_get_config *info = hba->u.mvfrey.config;

 if (info->header.size != sizeof(struct hpt_iop_request_get_config) ||
     info->header.type != IOP_REQUEST_TYPE_GET_CONFIG) {
  KdPrint(("hptiop: header size %x/%x type %x/%x",
    info->header.size, (int)sizeof(struct hpt_iop_request_get_config),
    info->header.type, IOP_REQUEST_TYPE_GET_CONFIG));
  return -1;
 }

 config->interface_version = info->interface_version;
 config->firmware_version = info->firmware_version;
 config->max_requests = info->max_requests;
 config->request_size = info->request_size;
 config->max_sg_count = info->max_sg_count;
 config->data_transfer_length = info->data_transfer_length;
 config->alignment_mask = info->alignment_mask;
 config->max_devices = info->max_devices;
 config->sdram_size = info->sdram_size;

 KdPrint(("hptiop: maxreq %x reqsz %x datalen %x maxdev %x sdram %x",
   config->max_requests, config->request_size,
   config->data_transfer_length, config->max_devices,
   config->sdram_size));

 return 0;
}
