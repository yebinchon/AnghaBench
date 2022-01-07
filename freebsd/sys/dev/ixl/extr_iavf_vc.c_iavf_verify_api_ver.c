
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtchnl_version_info {scalar_t__ major; scalar_t__ minor; } ;
struct TYPE_4__ {scalar_t__ major; scalar_t__ minor; } ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {TYPE_2__ version; int dev; struct i40e_hw hw; } ;
struct TYPE_3__ {int cookie_low; int cookie_high; } ;
struct i40e_arq_event_info {scalar_t__ msg_buf; TYPE_1__ desc; int buf_len; } ;
typedef scalar_t__ i40e_status ;
typedef enum virtchnl_ops { ____Placeholder_virtchnl_ops } virtchnl_ops ;
typedef int device_t ;


 int DDPRINTF (int ,char*,scalar_t__) ;
 scalar_t__ EIO ;
 scalar_t__ I40E_ERR_ADMIN_QUEUE_NO_WORK ;
 int IAVF_AQ_MAX_ERR ;
 int IXL_AQ_BUF_SZ ;
 int M_IAVF ;
 int M_WAITOK ;
 int VIRTCHNL_OP_VERSION ;
 scalar_t__ VIRTCHNL_VERSION_MAJOR ;
 scalar_t__ VIRTCHNL_VERSION_MINOR ;
 int device_printf (int ,char*,...) ;
 int free (scalar_t__,int ) ;
 scalar_t__ i40e_clean_arq_element (struct i40e_hw*,struct i40e_arq_event_info*,int *) ;
 int i40e_msec_pause (int) ;
 scalar_t__ le32toh (int ) ;
 scalar_t__ malloc (int ,int ,int ) ;

int
iavf_verify_api_ver(struct iavf_sc *sc)
{
 struct virtchnl_version_info *pf_vvi;
 struct i40e_hw *hw = &sc->hw;
 struct i40e_arq_event_info event;
 device_t dev = sc->dev;
 i40e_status err;
 int retries = 0;

 event.buf_len = IXL_AQ_BUF_SZ;
 event.msg_buf = malloc(event.buf_len, M_IAVF, M_WAITOK);

 for (;;) {
  if (++retries > IAVF_AQ_MAX_ERR)
   goto out_alloc;


  i40e_msec_pause(100);
  err = i40e_clean_arq_element(hw, &event, ((void*)0));
  if (err == I40E_ERR_ADMIN_QUEUE_NO_WORK)
   continue;
  else if (err) {
   err = EIO;
   goto out_alloc;
  }

  if ((enum virtchnl_ops)le32toh(event.desc.cookie_high) !=
      VIRTCHNL_OP_VERSION) {
   DDPRINTF(dev, "Received unexpected op response: %d\n",
       le32toh(event.desc.cookie_high));

   continue;
  }

  err = (i40e_status)le32toh(event.desc.cookie_low);
  if (err) {
   err = EIO;
   goto out_alloc;
  } else
   break;
 }

 pf_vvi = (struct virtchnl_version_info *)event.msg_buf;
 if ((pf_vvi->major > VIRTCHNL_VERSION_MAJOR) ||
     ((pf_vvi->major == VIRTCHNL_VERSION_MAJOR) &&
     (pf_vvi->minor > VIRTCHNL_VERSION_MINOR))) {
  device_printf(dev, "Critical PF/VF API version mismatch!\n");
  err = EIO;
 } else {
  sc->version.major = pf_vvi->major;
  sc->version.minor = pf_vvi->minor;
 }


 device_printf(dev, "PF API %d.%d / VF API %d.%d\n",
     pf_vvi->major, pf_vvi->minor,
     VIRTCHNL_VERSION_MAJOR, VIRTCHNL_VERSION_MINOR);

out_alloc:
 free(event.msg_buf, M_IAVF);
 return (err);
}
