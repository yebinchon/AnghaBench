
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_scsi_cmd_resp {int response; } ;
typedef int cam_status ;


 int CAM_DATA_RUN_ERR ;
 int CAM_REQ_ABORTED ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_SCSI_BUSY ;
 int CAM_SCSI_BUS_RESET ;
 int CAM_SCSI_IT_NEXUS_LOST ;
 int CAM_SEL_TIMEOUT ;
__attribute__((used)) static cam_status
vtscsi_scsi_cmd_cam_status(struct virtio_scsi_cmd_resp *cmd_resp)
{
 cam_status status;

 switch (cmd_resp->response) {
 case 132:
  status = CAM_REQ_CMP;
  break;
 case 131:
  status = CAM_DATA_RUN_ERR;
  break;
 case 136:
  status = CAM_REQ_ABORTED;
  break;
 case 135:
  status = CAM_SEL_TIMEOUT;
  break;
 case 130:
  status = CAM_SCSI_BUS_RESET;
  break;
 case 134:
  status = CAM_SCSI_BUSY;
  break;
 case 128:
 case 129:
 case 133:
  status = CAM_SCSI_IT_NEXUS_LOST;
  break;
 default:
  status = CAM_REQ_CMP_ERR;
  break;
 }

 return (status);
}
