
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int num_matches; size_t match_buf_len; int num_patterns; size_t pattern_buf_len; scalar_t__ status; TYPE_6__* matches; TYPE_6__* patterns; } ;
struct TYPE_8__ {int status; int func_code; } ;
union ccb {TYPE_5__ cdm; TYPE_2__ ccb_h; } ;
struct dev_match_result {int dummy; } ;
struct dev_match_pattern {int dummy; } ;
struct bus_match_pattern {int flags; scalar_t__ bus_id; int unit_number; int dev_name; } ;
typedef int path_id_t ;
typedef int ccb ;
struct TYPE_9__ {int path_id; } ;
struct TYPE_10__ {TYPE_3__ bus_result; } ;
struct TYPE_7__ {struct bus_match_pattern bus_pattern; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_4__ result; TYPE_1__ pattern; } ;


 int BUS_MATCH_BUS_ID ;
 int BUS_MATCH_NAME ;
 int BUS_MATCH_UNIT ;
 int CAMIOCOMMAND ;
 scalar_t__ CAM_DEV_MATCH_LAST ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 scalar_t__ DEV_MATCH_BUS ;
 int EIO ;
 int ENOENT ;
 int ENXIO ;
 int XPT_DEV_MATCH ;
 int bzero (union ccb*,int) ;
 void* calloc (int,size_t) ;
 int errno ;
 int free (TYPE_6__*) ;
 scalar_t__ ioctl (int ,int ,union ccb*) ;
 int mpt_unit ;
 int snprintf (int ,int,char*) ;
 int warnx (char*,int,scalar_t__) ;
 scalar_t__ xpt_open () ;
 int xptfd ;

__attribute__((used)) static int
fetch_path_id(path_id_t *path_id)
{
 struct bus_match_pattern *b;
 union ccb ccb;
 size_t bufsize;
 int error;

 if (xpt_open() < 0)
  return (ENXIO);


 bzero(&ccb, sizeof(ccb));

 ccb.ccb_h.func_code = XPT_DEV_MATCH;

 bufsize = sizeof(struct dev_match_result) * 1;
 ccb.cdm.num_matches = 0;
 ccb.cdm.match_buf_len = bufsize;
 ccb.cdm.matches = calloc(1, bufsize);

 bufsize = sizeof(struct dev_match_pattern) * 1;
 ccb.cdm.num_patterns = 1;
 ccb.cdm.pattern_buf_len = bufsize;
 ccb.cdm.patterns = calloc(1, bufsize);


 ccb.cdm.patterns[0].type = DEV_MATCH_BUS;
 b = &ccb.cdm.patterns[0].pattern.bus_pattern;
 snprintf(b->dev_name, sizeof(b->dev_name), "mpt");
 b->unit_number = mpt_unit;
 b->bus_id = 0;
 b->flags = BUS_MATCH_NAME | BUS_MATCH_UNIT | BUS_MATCH_BUS_ID;

 if (ioctl(xptfd, CAMIOCOMMAND, &ccb) < 0) {
  error = errno;
  free(ccb.cdm.matches);
  free(ccb.cdm.patterns);
  return (error);
 }
 free(ccb.cdm.patterns);

 if (((ccb.ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) ||
     (ccb.cdm.status != CAM_DEV_MATCH_LAST)) {
  warnx("fetch_path_id got CAM error %#x, CDM error %d\n",
      ccb.ccb_h.status, ccb.cdm.status);
  free(ccb.cdm.matches);
  return (EIO);
 }


 if (ccb.cdm.num_matches != 1 ||
     ccb.cdm.matches[0].type != DEV_MATCH_BUS) {
  free(ccb.cdm.matches);
  return (ENOENT);
 }
 *path_id = ccb.cdm.matches[0].result.bus_result.path_id;
 free(ccb.cdm.matches);
 return (0);
}
