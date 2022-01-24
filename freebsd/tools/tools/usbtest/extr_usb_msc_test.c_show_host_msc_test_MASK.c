#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_msc_params {int try_invalid_scsi_command; int try_invalid_wrapper_block; int try_invalid_max_packet_size; int try_last_lba; int try_abort_data_write; int try_sense_on_error; int try_all_lun; int try_shorter_wrapper_block; void* duration; void* max_errors; int /*<<< orphan*/  io_lun; int /*<<< orphan*/  io_pattern; int /*<<< orphan*/  io_area; int /*<<< orphan*/  io_offset; int /*<<< orphan*/  io_delay; int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_MSC_IO_AREA_MAX ; 
 int /*<<< orphan*/  USB_MSC_IO_DELAY_MAX ; 
 int /*<<< orphan*/  USB_MSC_IO_LUN_MAX ; 
 int /*<<< orphan*/  USB_MSC_IO_MODE_MAX ; 
 int /*<<< orphan*/  USB_MSC_IO_OFF_MAX ; 
 int /*<<< orphan*/  USB_MSC_IO_PATTERN_MAX ; 
 int /*<<< orphan*/  USB_MSC_IO_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct usb_msc_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct usb_msc_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_msc_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_msc_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_msc_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_msc_params*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_msc_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_msc_params*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ ,int,int,char*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC11(uint8_t level, uint16_t vid,
    uint16_t pid, uint32_t duration)
{
	struct usb_msc_params params;
	uint8_t retval;

	FUNC8(&params);

	params.duration = duration;

	while (1) {

		retval = FUNC10(level,
		    "Mass Storage Test Parameters",
		    " 1) Toggle I/O mode: <%s>\n"
		    " 2) Toggle I/O size: <%s>\n"
		    " 3) Toggle I/O delay: <%s>\n"
		    " 4) Toggle I/O offset: <%s>\n"
		    " 5) Toggle I/O area: <%s>\n"
		    " 6) Toggle I/O pattern: <%s>\n"
		    " 7) Toggle try invalid SCSI command: <%s>\n"
		    " 8) Toggle try invalid wrapper block: <%s>\n"
		    " 9) Toggle try invalid MaxPacketSize: <%s>\n"
		    "10) Toggle try last Logical Block Address: <%s>\n"
		    "11) Toggle I/O lun: <%d>\n"
		    "12) Set maximum number of errors: <%d>\n"
		    "13) Set test duration: <%d> seconds\n"
		    "14) Toggle try aborted write transfer: <%s>\n"
		    "15) Toggle request sense on error: <%s>\n"
		    "16) Toggle try all LUN: <%s>\n"
		    "17) Toggle try too short wrapper block: <%s>\n"
		    "20) Reset parameters\n"
		    "30) Start test (VID=0x%04x, PID=0x%04x)\n"
		    "40) Select another device\n"
		    " x) Return to previous menu \n",
		    FUNC4(&params),
		    FUNC7(&params),
		    FUNC3(&params),
		    FUNC5(&params),
		    FUNC2(&params),
		    FUNC6(&params),
		    (params.try_invalid_scsi_command ? "YES" : "NO"),
		    (params.try_invalid_wrapper_block ? "YES" : "NO"),
		    (params.try_invalid_max_packet_size ? "YES" : "NO"),
		    (params.try_last_lba ? "YES" : "NO"),
		    params.io_lun,
		    (int)params.max_errors,
		    (int)params.duration,
		    (params.try_abort_data_write ? "YES" : "NO"),
		    (params.try_sense_on_error ? "YES" : "NO"),
		    (params.try_all_lun ? "YES" : "NO"),
		    (params.try_shorter_wrapper_block ? "YES" : "NO"),
		    vid, pid);
		switch (retval) {
		case 0:
			break;
		case 1:
			params.io_mode++;
			params.io_mode %= USB_MSC_IO_MODE_MAX;
			break;
		case 2:
			params.io_size++;
			params.io_size %= USB_MSC_IO_SIZE_MAX;
			break;
		case 3:
			params.io_delay++;
			params.io_delay %= USB_MSC_IO_DELAY_MAX;
			break;
		case 4:
			params.io_offset++;
			params.io_offset %= USB_MSC_IO_OFF_MAX;
			break;
		case 5:
			params.io_area++;
			params.io_area %= USB_MSC_IO_AREA_MAX;
			break;
		case 6:
			params.io_pattern++;
			params.io_pattern %= USB_MSC_IO_PATTERN_MAX;
			break;
		case 7:
			params.try_invalid_scsi_command ^= 1;
			break;
		case 8:
			params.try_invalid_wrapper_block ^= 1;
			break;
		case 9:
			params.try_invalid_max_packet_size ^= 1;
			break;
		case 10:
			params.try_last_lba ^= 1;
			break;
		case 11:
			params.io_lun++;
			params.io_lun %= USB_MSC_IO_LUN_MAX;
			break;
		case 12:
			params.max_errors = FUNC1();
			break;
		case 13:
			params.duration = FUNC1();
			break;
		case 14:
			params.try_abort_data_write ^= 1;
			break;
		case 15:
			params.try_sense_on_error ^= 1;
			break;
		case 16:
			params.try_all_lun ^= 1;
			break;
		case 17:
			params.try_shorter_wrapper_block ^= 1;
			break;
		case 20:
			FUNC8(&params);
			break;
		case 30:
			FUNC0(&params, vid, pid);
			break;
		case 40:
			FUNC9(level + 1, &vid, &pid);
			break;
		default:
			return;
		}
	}
}