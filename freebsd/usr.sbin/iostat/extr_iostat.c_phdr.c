
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int devbuf ;
struct TYPE_8__ {TYPE_2__* dinfo; } ;
struct TYPE_7__ {int selected; int position; } ;
struct TYPE_6__ {TYPE_1__* devices; } ;
struct TYPE_5__ {char* device_name; int unit_number; } ;


 scalar_t__ Cflag ;
 scalar_t__ Iflag ;
 scalar_t__ Tflag ;
 TYPE_4__ cur ;
 TYPE_3__* dev_select ;
 int maxshowdevs ;
 int num_devices ;
 scalar_t__ oflag ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*,int ) ;
 scalar_t__ xflag ;

__attribute__((used)) static void
phdr(void)
{
 int i, printed;
 char devbuf[256];





 if (xflag > 0)
  return;

 if (Tflag > 0)
  (void)printf("       tty");
 for (i = 0, printed=0;(i < num_devices) && (printed < maxshowdevs);i++){
  int di;
  if ((dev_select[i].selected != 0)
   && (dev_select[i].selected <= maxshowdevs)) {
   di = dev_select[i].position;
   snprintf(devbuf, sizeof(devbuf), "%s%d",
         cur.dinfo->devices[di].device_name,
         cur.dinfo->devices[di].unit_number);
   if (oflag > 0)
    (void)printf("%13.6s ", devbuf);
   else
    printf("%16.6s ", devbuf);
   printed++;
  }
 }
 if (Cflag > 0)
  (void)printf("            cpu\n");
 else
  (void)printf("\n");

 if (Tflag > 0)
  (void)printf(" tin  tout");

 for (i=0, printed = 0;(i < num_devices) && (printed < maxshowdevs);i++){
  if ((dev_select[i].selected != 0)
   && (dev_select[i].selected <= maxshowdevs)) {
   if (oflag > 0) {
    if (Iflag == 0)
     (void)printf(" sps tps msps ");
    else
     (void)printf(" blk xfr msps ");
   } else {
    if (Iflag == 0)
     printf(" KB/t  tps  MB/s ");
    else
     printf(" KB/t xfrs    MB ");
   }
   printed++;
  }
 }
 if (Cflag > 0)
  (void)printf(" us ni sy in id\n");
 else
  printf("\n");

}
