
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_report_luns_data {TYPE_1__* luns; } ;
struct TYPE_2__ {int* lundata; } ;





 int RPL_LUNDATA_ATYP_MASK ;

 int RPL_LUNDATA_FLAT_LUN_BITS ;
 int RPL_LUNDATA_FLAT_LUN_MASK ;
 int cctl_get_luns (int,int,int,int,struct scsi_report_luns_data**,int*) ;
 int fprintf (int ,char*,int) ;
 int free (struct scsi_report_luns_data*) ;
 int stdout ;

__attribute__((used)) static int
cctl_report_luns(int fd, int lun, int iid, int retries)
{
 struct scsi_report_luns_data *lun_data;
 uint32_t num_luns, i;
 int retval;

 lun_data = ((void*)0);

 if ((retval = cctl_get_luns(fd, lun, iid, retries, &lun_data,
       &num_luns)) != 0)
  goto bailout;

 fprintf(stdout, "%u LUNs returned\n", num_luns);
 for (i = 0; i < num_luns; i++) {
  int lun_val;





  switch (lun_data->luns[i].lundata[0] & RPL_LUNDATA_ATYP_MASK) {
  case 128:
   lun_val = lun_data->luns[i].lundata[1];
   break;
  case 130:
   lun_val = (lun_data->luns[i].lundata[0] &
    RPL_LUNDATA_FLAT_LUN_MASK) |
    (lun_data->luns[i].lundata[1] <<
    RPL_LUNDATA_FLAT_LUN_BITS);
   break;
  case 129:
  case 131:
  default:
   fprintf(stdout, "Unsupported LUN format %d\n",
    lun_data->luns[i].lundata[0] &
    RPL_LUNDATA_ATYP_MASK);
   lun_val = -1;
   break;
  }
  if (lun_val == -1)
   continue;

  fprintf(stdout, "%d\n", lun_val);
 }

bailout:
 if (lun_data != ((void*)0))
  free(lun_data);

 return (retval);
}
