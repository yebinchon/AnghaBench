#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nvme_sanitize_status_page {int dummy; } ;
struct nvme_res_notification_page {int dummy; } ;
struct nvme_ns_list {scalar_t__* ns; } ;
struct nvme_health_information_page {int /*<<< orphan*/  critical_warning; } ;
struct nvme_firmware_page {int dummy; } ;
struct nvme_error_information_entry {int dummy; } ;
struct nvme_completion {int dummy; } ;
struct nvme_command_effects_page {int dummy; } ;
struct nvme_async_event_request {int log_page_id; TYPE_2__* ctrlr; int /*<<< orphan*/  log_page_size; int /*<<< orphan*/ * log_page_buffer; int /*<<< orphan*/  cpl; } ;
struct intel_log_temp_stats {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  elpe; } ;
struct TYPE_8__ {int /*<<< orphan*/  async_event_config; TYPE_1__ cdata; } ;

/* Variables and functions */
#define  INTEL_LOG_TEMP_STATS 135 
#define  NVME_LOG_CHANGED_NAMESPACE 134 
#define  NVME_LOG_COMMAND_EFFECT 133 
#define  NVME_LOG_ERROR 132 
#define  NVME_LOG_FIRMWARE_SLOT 131 
#define  NVME_LOG_HEALTH_INFORMATION 130 
#define  NVME_LOG_RES_NOTIFICATION 129 
#define  NVME_LOG_SANITIZE_STATUS 128 
 scalar_t__ NVME_MAX_NAMESPACES ; 
 int /*<<< orphan*/  FUNC0 (struct intel_log_temp_stats*) ; 
 int FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_command_effects_page*) ; 
 scalar_t__ FUNC3 (struct nvme_completion const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct nvme_async_event_request*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_firmware_page*) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_health_information_page*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct nvme_ns_list*) ; 
 int /*<<< orphan*/  FUNC13 (struct nvme_res_notification_page*) ; 
 int /*<<< orphan*/  FUNC14 (struct nvme_sanitize_status_page*) ; 
 int /*<<< orphan*/  nvme_use_nvd ; 

__attribute__((used)) static void
FUNC15(void *arg, const struct nvme_completion *cpl)
{
	struct nvme_async_event_request		*aer = arg;
	struct nvme_health_information_page	*health_info;
	struct nvme_ns_list			*nsl;
	struct nvme_error_information_entry	*err;
	int i;

	/*
	 * If the log page fetch for some reason completed with an error,
	 *  don't pass log page data to the consumers.  In practice, this case
	 *  should never happen.
	 */
	if (FUNC3(cpl))
		FUNC10(aer->ctrlr, &aer->cpl,
		    aer->log_page_id, NULL, 0);
	else {
		/* Convert data to host endian */
		switch (aer->log_page_id) {
		case NVME_LOG_ERROR:
			err = (struct nvme_error_information_entry *)aer->log_page_buffer;
			for (i = 0; i < (aer->ctrlr->cdata.elpe + 1); i++)
				FUNC7(err++);
			break;
		case NVME_LOG_HEALTH_INFORMATION:
			FUNC9(
			    (struct nvme_health_information_page *)aer->log_page_buffer);
			break;
		case NVME_LOG_FIRMWARE_SLOT:
			FUNC8(
			    (struct nvme_firmware_page *)aer->log_page_buffer);
			break;
		case NVME_LOG_CHANGED_NAMESPACE:
			FUNC12(
			    (struct nvme_ns_list *)aer->log_page_buffer);
			break;
		case NVME_LOG_COMMAND_EFFECT:
			FUNC2(
			    (struct nvme_command_effects_page *)aer->log_page_buffer);
			break;
		case NVME_LOG_RES_NOTIFICATION:
			FUNC13(
			    (struct nvme_res_notification_page *)aer->log_page_buffer);
			break;
		case NVME_LOG_SANITIZE_STATUS:
			FUNC14(
			    (struct nvme_sanitize_status_page *)aer->log_page_buffer);
			break;
		case INTEL_LOG_TEMP_STATS:
			FUNC0(
			    (struct intel_log_temp_stats *)aer->log_page_buffer);
			break;
		default:
			break;
		}

		if (aer->log_page_id == NVME_LOG_HEALTH_INFORMATION) {
			health_info = (struct nvme_health_information_page *)
			    aer->log_page_buffer;
			FUNC6(aer->ctrlr,
			    health_info->critical_warning);
			/*
			 * Critical warnings reported through the
			 *  SMART/health log page are persistent, so
			 *  clear the associated bits in the async event
			 *  config so that we do not receive repeated
			 *  notifications for the same event.
			 */
			aer->ctrlr->async_event_config &=
			    ~health_info->critical_warning;
			FUNC4(aer->ctrlr,
			    aer->ctrlr->async_event_config, NULL, NULL);
		} else if (aer->log_page_id == NVME_LOG_CHANGED_NAMESPACE &&
		    !nvme_use_nvd) {
			nsl = (struct nvme_ns_list *)aer->log_page_buffer;
			for (i = 0; i < FUNC1(nsl->ns) && nsl->ns[i] != 0; i++) {
				if (nsl->ns[i] > NVME_MAX_NAMESPACES)
					break;
				FUNC11(aer->ctrlr, nsl->ns[i]);
			}
		}


		/*
		 * Pass the cpl data from the original async event completion,
		 *  not the log page fetch.
		 */
		FUNC10(aer->ctrlr, &aer->cpl,
		    aer->log_page_id, aer->log_page_buffer, aer->log_page_size);
	}

	/*
	 * Repost another asynchronous event request to replace the one
	 *  that just completed.
	 */
	FUNC5(aer->ctrlr, aer);
}