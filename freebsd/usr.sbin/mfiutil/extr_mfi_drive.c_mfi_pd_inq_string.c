
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vendor ;
struct scsi_inquiry_data {char* vendor; char* product; char* revision; scalar_t__ vendor_specific0; } ;
struct mfi_pd_info {int inquiry_data; } ;
typedef int serial ;
typedef int rstr ;
typedef int revision ;
typedef int product ;
typedef int iqd ;
typedef int inq_string ;



 int SID_ANSI_REV (struct scsi_inquiry_data*) ;
 scalar_t__ SID_QUAL (struct scsi_inquiry_data*) ;
 scalar_t__ SID_QUAL_IS_VENDOR_UNIQUE (struct scsi_inquiry_data*) ;
 scalar_t__ SID_QUAL_LU_CONNECTED ;
 scalar_t__ SID_TYPE (struct scsi_inquiry_data*) ;
 int SID_VENDOR_SPECIFIC_0_SIZE ;
 scalar_t__ T_DIRECT ;
 int cam_strvis (char*,char*,int,int) ;
 int memcpy (struct scsi_inquiry_data*,int ,int) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

const char *
mfi_pd_inq_string(struct mfi_pd_info *info)
{
 struct scsi_inquiry_data iqd, *inq_data = &iqd;
 char vendor[16], product[48], revision[16], rstr[12], serial[SID_VENDOR_SPECIFIC_0_SIZE];
 static char inq_string[64];

 memcpy(inq_data, info->inquiry_data,
     (sizeof (iqd) < sizeof (info->inquiry_data))?
     sizeof (iqd) : sizeof (info->inquiry_data));
 if (SID_QUAL_IS_VENDOR_UNIQUE(inq_data))
  return (((void*)0));
 if (SID_TYPE(inq_data) != T_DIRECT)
  return (((void*)0));
 if (SID_QUAL(inq_data) != SID_QUAL_LU_CONNECTED)
  return (((void*)0));

 cam_strvis(vendor, inq_data->vendor, sizeof(inq_data->vendor),
     sizeof(vendor));
 cam_strvis(product, inq_data->product, sizeof(inq_data->product),
     sizeof(product));
 cam_strvis(revision, inq_data->revision, sizeof(inq_data->revision),
     sizeof(revision));
 cam_strvis(serial, (char *)inq_data->vendor_specific0, sizeof(inq_data->vendor_specific0),
     sizeof(serial));


 if (strcmp(vendor, "ATA") == 0) {
  snprintf(inq_string, sizeof(inq_string), "<%s %s serial=%s> SATA",
      product, revision, serial);
  return (inq_string);
 }

 switch (SID_ANSI_REV(inq_data)) {
 case 128:
  strcpy(rstr, "SCSI-CCS");
  break;
 case 5:
  strcpy(rstr, "SAS");
  break;
 default:
  snprintf(rstr, sizeof (rstr), "SCSI-%d",
      SID_ANSI_REV(inq_data));
  break;
 }
 snprintf(inq_string, sizeof(inq_string), "<%s %s %s serial=%s> %s", vendor,
     product, revision, serial, rstr);
 return (inq_string);
}
