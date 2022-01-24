#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {int data_stress_test; int control_ep_test; int random_tx_length; int random_tx_delay; int use_vendor_specific; int loop_data; scalar_t__ duration; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__ modem ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int FUNC4 (int,char*,char*,char*,char*,char*,char*,char*,char*,int,int,int) ; 

void
FUNC5(uint8_t level, uint16_t vid, uint16_t pid, uint32_t duration)
{
	uint8_t retval;

	FUNC2(&modem);

	modem.duration = duration;

	while (1) {

		retval = FUNC4(level, "Modem Test Parameters",
		    " 1) Execute Data Stress Test: <%s>\n"
		    " 2) Execute Modem Control Endpoint Test: <%s>\n"
		    " 3) Use random transmit length: <%s>\n"
		    " 4) Use random transmit delay: <%s> ms\n"
		    " 5) Use vendor specific interface: <%s>\n"
		    "10) Loop data: <%s>\n"
		    "13) Set test duration: <%d> seconds\n"
		    "20) Reset parameters\n"
		    "30) Start test (VID=0x%04x, PID=0x%04x)\n"
		    "40) Select another device\n"
		    " x) Return to previous menu \n",
		    (modem.data_stress_test ? "YES" : "NO"),
		    (modem.control_ep_test ? "YES" : "NO"),
		    (modem.random_tx_length ? "YES" : "NO"),
		    (modem.random_tx_delay ? "16" : "0"),
		    (modem.use_vendor_specific ? "YES" : "NO"),
		    (modem.loop_data ? "YES" : "NO"),
		    (int)(modem.duration),
		    (int)vid, (int)pid);

		switch (retval) {
		case 0:
			break;
		case 1:
			modem.data_stress_test ^= 1;
			break;
		case 2:
			modem.control_ep_test ^= 1;
			break;
		case 3:
			modem.random_tx_length ^= 1;
			break;
		case 4:
			modem.random_tx_delay ^= 1;
			break;
		case 5:
			modem.use_vendor_specific ^= 1;
			modem.control_ep_test = 0;
			break;
		case 10:
			modem.loop_data ^= 1;
			break;
		case 13:
			modem.duration = FUNC1();
			break;
		case 20:
			FUNC2(&modem);
			break;
		case 30:
			FUNC0(&modem, vid, pid);
			break;
		case 40:
			FUNC3(level + 1, &vid, &pid);
			break;
		default:
			return;
		}
	}
}