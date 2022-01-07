
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {size_t num_matches; size_t match_buf_len; int num_patterns; size_t pattern_buf_len; scalar_t__ status; TYPE_5__* matches; TYPE_5__* patterns; } ;
struct TYPE_10__ {int status; int func_code; } ;
union ccb {TYPE_4__ cdm; TYPE_2__ ccb_h; } ;
typedef size_t uint32_t ;
struct periph_match_result {char* periph_name; int unit_number; int target_id; } ;
struct periph_match_pattern {int flags; int periph_name; int path_id; } ;
struct mpt_standalone_disk {int devname; int target; scalar_t__ bus; } ;
struct dev_match_result {int dummy; } ;
struct dev_match_pattern {int dummy; } ;
struct cam_device {int dummy; } ;
typedef int path_id_t ;
typedef int ccb ;
struct TYPE_11__ {struct periph_match_result periph_result; } ;
struct TYPE_9__ {struct periph_match_pattern periph_pattern; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_3__ result; TYPE_1__ pattern; } ;
typedef TYPE_5__ CONFIG_PAGE_IOC_2 ;


 int CAMIOCOMMAND ;
 scalar_t__ CAM_DEV_MATCH_LAST ;
 scalar_t__ CAM_DEV_MATCH_MORE ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 scalar_t__ DEV_MATCH_PERIPH ;
 int EIO ;
 int ENXIO ;
 int O_RDWR ;
 int PERIPH_MATCH_NAME ;
 int PERIPH_MATCH_PATH ;
 int XPT_DEV_MATCH ;
 int bzero (union ccb*,int) ;
 void* calloc (int,int) ;
 int cam_close_device (struct cam_device*) ;
 struct cam_device* cam_open_device (int ,int ) ;
 int errno ;
 int fetch_path_id (int *) ;
 int fetch_scsi_capacity (struct cam_device*,struct mpt_standalone_disk*) ;
 int fetch_scsi_inquiry (struct cam_device*,struct mpt_standalone_disk*) ;
 int free (TYPE_5__*) ;
 scalar_t__ ioctl (int ,int ,union ccb*) ;
 TYPE_5__* mpt_read_ioc_page (int,int,int *) ;
 scalar_t__ periph_is_volume (TYPE_5__*,struct periph_match_result*) ;
 int snprintf (int ,int,char*,...) ;
 int warnx (char*) ;
 scalar_t__ xpt_open () ;
 int xptfd ;

int
mpt_fetch_disks(int fd, int *ndisks, struct mpt_standalone_disk **disksp)
{
 CONFIG_PAGE_IOC_2 *ioc2;
 struct mpt_standalone_disk *disks;
 struct periph_match_pattern *p;
 struct periph_match_result *r;
 struct cam_device *dev;
 union ccb ccb;
 path_id_t path_id;
 size_t bufsize;
 int count, error;
 uint32_t i;

 if (xpt_open() < 0)
  return (ENXIO);

 error = fetch_path_id(&path_id);
 if (error)
  return (error);

 for (count = 100;; count+= 100) {

  bzero(&ccb, sizeof(ccb));

  ccb.ccb_h.func_code = XPT_DEV_MATCH;

  bufsize = sizeof(struct dev_match_result) * (count + 1);
  ccb.cdm.num_matches = 0;
  ccb.cdm.match_buf_len = bufsize;
  ccb.cdm.matches = calloc(1, bufsize);

  bufsize = sizeof(struct dev_match_pattern) * 1;
  ccb.cdm.num_patterns = 1;
  ccb.cdm.pattern_buf_len = bufsize;
  ccb.cdm.patterns = calloc(1, bufsize);


  ccb.cdm.patterns[0].type = DEV_MATCH_PERIPH;
  p = &ccb.cdm.patterns[0].pattern.periph_pattern;
  p->path_id = path_id;
  snprintf(p->periph_name, sizeof(p->periph_name), "da");
  p->flags = PERIPH_MATCH_PATH | PERIPH_MATCH_NAME;

  if (ioctl(xptfd, CAMIOCOMMAND, &ccb) < 0) {
   error = errno;
   free(ccb.cdm.matches);
   free(ccb.cdm.patterns);
   return (error);
  }
  free(ccb.cdm.patterns);


  if ((ccb.ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
   free(ccb.cdm.matches);
   return (EIO);
  }


  if (ccb.cdm.status == CAM_DEV_MATCH_MORE) {
   free(ccb.cdm.matches);
   continue;
  }


  if (ccb.cdm.status != CAM_DEV_MATCH_LAST) {
   free(ccb.cdm.matches);
   return (EIO);
  }
  break;
 }


 if (ccb.cdm.num_matches == 0) {
  free(ccb.cdm.matches);
  *ndisks = 0;
  *disksp = ((void*)0);
  return (0);
 }


 for (i = 0; i < ccb.cdm.num_matches; i++) {
  if (ccb.cdm.matches[i].type != DEV_MATCH_PERIPH) {
   warnx("mpt_fetch_disks got wrong CAM matches");
   free(ccb.cdm.matches);
   return (EIO);
  }
 }






 ioc2 = mpt_read_ioc_page(fd, 2, ((void*)0));
 if (ioc2 == ((void*)0))
  return (errno);
 disks = calloc(ccb.cdm.num_matches, sizeof(*disks));
 count = 0;
 for (i = 0; i < ccb.cdm.num_matches; i++) {
  r = &ccb.cdm.matches[i].result.periph_result;
  if (periph_is_volume(ioc2, r))
   continue;
  disks[count].bus = 0;
  disks[count].target = r->target_id;
  snprintf(disks[count].devname, sizeof(disks[count].devname),
      "%s%d", r->periph_name, r->unit_number);

  dev = cam_open_device(disks[count].devname, O_RDWR);
  if (dev != ((void*)0)) {
   fetch_scsi_capacity(dev, &disks[count]);
   fetch_scsi_inquiry(dev, &disks[count]);
   cam_close_device(dev);
  }
  count++;
 }
 free(ccb.cdm.matches);
 free(ioc2);

 *ndisks = count;
 *disksp = disks;
 return (0);
}
