
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vendor ;
struct scsi_inquiry_data {int revision; int product; int vendor; } ;
struct mpt_standalone_disk {int inqstring; } ;
typedef int rstr ;
typedef int revision ;
typedef int product ;



 int SID_ANSI_REV (struct scsi_inquiry_data*) ;
 scalar_t__ SID_QUAL (struct scsi_inquiry_data*) ;
 scalar_t__ SID_QUAL_IS_VENDOR_UNIQUE (struct scsi_inquiry_data*) ;
 scalar_t__ SID_QUAL_LU_CONNECTED ;
 scalar_t__ SID_TYPE (struct scsi_inquiry_data*) ;
 scalar_t__ T_DIRECT ;
 int cam_strvis (char*,int ,int,int) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void
format_scsi_inquiry(struct mpt_standalone_disk *disk,
    struct scsi_inquiry_data *inq_data)
{
 char vendor[16], product[48], revision[16], rstr[12];

 if (SID_QUAL_IS_VENDOR_UNIQUE(inq_data))
  return;
 if (SID_TYPE(inq_data) != T_DIRECT)
  return;
 if (SID_QUAL(inq_data) != SID_QUAL_LU_CONNECTED)
  return;

 cam_strvis(vendor, inq_data->vendor, sizeof(inq_data->vendor),
     sizeof(vendor));
 cam_strvis(product, inq_data->product, sizeof(inq_data->product),
     sizeof(product));
 cam_strvis(revision, inq_data->revision, sizeof(inq_data->revision),
     sizeof(revision));


 if (strcmp(vendor, "ATA") == 0) {
  snprintf(disk->inqstring, sizeof(disk->inqstring),
      "<%s %s> SATA", product, revision);
  return;
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
 snprintf(disk->inqstring, sizeof(disk->inqstring), "<%s %s %s> %s",
     vendor, product, revision, rstr);
}
