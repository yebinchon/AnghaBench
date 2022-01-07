
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vendor ;
typedef char u_char ;
typedef int revision ;
typedef int product ;
typedef int inq_string ;
struct TYPE_4__ {int ProductRevLevel; int ProductID; int VendorID; } ;
struct TYPE_5__ {TYPE_1__ InquiryData; } ;
typedef TYPE_1__ RAID_PHYS_DISK0_INQUIRY_DATA ;
typedef TYPE_2__ CONFIG_PAGE_RAID_PHYS_DISK_0 ;


 int cam_strvis (char*,int ,int,int) ;
 int snprintf (char*,int,char*,char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

const char *
mpt_pd_inq_string(CONFIG_PAGE_RAID_PHYS_DISK_0 *pd_info)
{
 RAID_PHYS_DISK0_INQUIRY_DATA *inq_data;
 u_char vendor[9], product[17], revision[5];
 static char inq_string[64];

 inq_data = &pd_info->InquiryData;
 cam_strvis(vendor, inq_data->VendorID, sizeof(inq_data->VendorID),
     sizeof(vendor));
 cam_strvis(product, inq_data->ProductID, sizeof(inq_data->ProductID),
     sizeof(product));
 cam_strvis(revision, inq_data->ProductRevLevel,
     sizeof(inq_data->ProductRevLevel), sizeof(revision));


 if (strcmp(vendor, "ATA") == 0)
  snprintf(inq_string, sizeof(inq_string), "<%s %s> SATA",
      product, revision);
 else
  snprintf(inq_string, sizeof(inq_string), "<%s %s %s> SAS",
      vendor, product, revision);
 return (inq_string);
}
