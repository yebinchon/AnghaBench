#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct virtchnl_version_info {scalar_t__ major; scalar_t__ minor; } ;
struct TYPE_4__ {scalar_t__ major; scalar_t__ minor; } ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {TYPE_2__ version; int /*<<< orphan*/  dev; struct i40e_hw hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  cookie_low; int /*<<< orphan*/  cookie_high; } ;
struct i40e_arq_event_info {scalar_t__ msg_buf; TYPE_1__ desc; int /*<<< orphan*/  buf_len; } ;
typedef  scalar_t__ i40e_status ;
typedef  enum virtchnl_ops { ____Placeholder_virtchnl_ops } virtchnl_ops ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ EIO ; 
 scalar_t__ I40E_ERR_ADMIN_QUEUE_NO_WORK ; 
 int IAVF_AQ_MAX_ERR ; 
 int /*<<< orphan*/  IXL_AQ_BUF_SZ ; 
 int /*<<< orphan*/  M_IAVF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int VIRTCHNL_OP_VERSION ; 
 scalar_t__ VIRTCHNL_VERSION_MAJOR ; 
 scalar_t__ VIRTCHNL_VERSION_MINOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct i40e_hw*,struct i40e_arq_event_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(struct iavf_sc *sc)
{
	struct virtchnl_version_info *pf_vvi;
	struct i40e_hw *hw = &sc->hw;
	struct i40e_arq_event_info event;
	device_t dev = sc->dev;
	i40e_status err;
	int retries = 0;

	event.buf_len = IXL_AQ_BUF_SZ;
	event.msg_buf = FUNC6(event.buf_len, M_IAVF, M_WAITOK);

	for (;;) {
		if (++retries > IAVF_AQ_MAX_ERR)
			goto out_alloc;

		/* Initial delay here is necessary */
		FUNC4(100);
		err = FUNC3(hw, &event, NULL);
		if (err == I40E_ERR_ADMIN_QUEUE_NO_WORK)
			continue;
		else if (err) {
			err = EIO;
			goto out_alloc;
		}

		if ((enum virtchnl_ops)FUNC5(event.desc.cookie_high) !=
		    VIRTCHNL_OP_VERSION) {
			FUNC0(dev, "Received unexpected op response: %d\n",
			    FUNC5(event.desc.cookie_high));
		    	/* Don't stop looking for expected response */
			continue;
		}

		err = (i40e_status)FUNC5(event.desc.cookie_low);
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
		FUNC1(dev, "Critical PF/VF API version mismatch!\n");
		err = EIO;
	} else {
		sc->version.major = pf_vvi->major;
		sc->version.minor = pf_vvi->minor;
	}
	
	/* Log PF/VF api versions */
	FUNC1(dev, "PF API %d.%d / VF API %d.%d\n",
	    pf_vvi->major, pf_vvi->minor,
	    VIRTCHNL_VERSION_MAJOR, VIRTCHNL_VERSION_MINOR);

out_alloc:
	FUNC2(event.msg_buf, M_IAVF);
	return (err);
}