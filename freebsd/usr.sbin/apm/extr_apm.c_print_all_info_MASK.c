#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int time_t ;
struct tm {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct apm_pwstatus {int ap_device; int ap_batt_flag; int eax; int ecx; int edx; int esi; void* ebx; int /*<<< orphan*/  edi; int /*<<< orphan*/  ap_batt_time; int /*<<< orphan*/  ap_batt_life; int /*<<< orphan*/  ap_batt_stat; } ;
struct apm_bios_arg {int ap_device; int ap_batt_flag; int eax; int ecx; int edx; int esi; void* ebx; int /*<<< orphan*/  edi; int /*<<< orphan*/  ap_batt_time; int /*<<< orphan*/  ap_batt_life; int /*<<< orphan*/  ap_batt_stat; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  args ;
typedef  int /*<<< orphan*/  aps ;
typedef  TYPE_1__* apm_info_t ;
struct TYPE_3__ {int ai_major; int ai_minor; int ai_acline; int ai_infoversion; unsigned int ai_batteries; int ai_capabilities; int /*<<< orphan*/  ai_batt_time; int /*<<< orphan*/  ai_batt_life; int /*<<< orphan*/  ai_batt_stat; scalar_t__ ai_status; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  APMIO_BIOS ; 
 int /*<<< orphan*/  APMIO_GETPWSTATUS ; 
 int APM_BATT_NOT_PRESENT ; 
 int APM_BIOS ; 
 int APM_RESUMEONRING ; 
 int APM_RESUMETIMER ; 
 int APM_UNKNOWN ; 
 void* PMDV_APMBIOS ; 
 int PMDV_BATT0 ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct apm_pwstatus*,int) ; 
 scalar_t__ cmos_wall ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct apm_pwstatus*) ; 
 struct tm* FUNC4 (int*) ; 
 int FUNC5 (struct tm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,struct tm*) ; 
 int FUNC11 (struct tm*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void 
FUNC15(int fd, apm_info_t aip, int bioscall_available)
{
	struct apm_bios_arg args;
	int apmerr;
	const char *line_msg[] = { "off-line", "on-line" , "backup power"};

	FUNC9("APM version: %d.%d\n", aip->ai_major, aip->ai_minor);
	FUNC9("APM Management: %s\n", aip->ai_status ? "Enabled" : "Disabled");
	FUNC9("AC Line status: ");
	if (aip->ai_acline == APM_UNKNOWN)
		FUNC9("unknown\n");
	else if (aip->ai_acline > 2)
		FUNC9("invalid value (0x%x)\n", aip->ai_acline);
	else
		FUNC9("%s\n", line_msg[aip->ai_acline]);

	FUNC7(aip->ai_batt_stat);
	FUNC6(aip->ai_batt_life);
	FUNC8(aip->ai_batt_time);

	if (aip->ai_infoversion >= 1) {
		FUNC9("Number of batteries: ");
		if (aip->ai_batteries == ~0U)
			FUNC9("unknown\n");
		else {
			u_int i;
			struct apm_pwstatus aps;

			FUNC9("%d\n", aip->ai_batteries);
			for (i = 0; i < aip->ai_batteries; ++i) {
				FUNC2(&aps, sizeof(aps));
				aps.ap_device = PMDV_BATT0 + i;
				if (FUNC3(fd, APMIO_GETPWSTATUS, &aps) == -1)
					continue;
				FUNC9("Battery %d:\n", i);
				if (aps.ap_batt_flag & APM_BATT_NOT_PRESENT) {
					FUNC9("not present\n");
					continue;
				}
				FUNC9("\t");
				FUNC7(aps.ap_batt_stat);
				FUNC9("\t");
				FUNC6(aps.ap_batt_life);
				FUNC9("\t");
				FUNC8(aps.ap_batt_time);
			}
		}
	}

	if (bioscall_available) {
		/*
		 * try to get the suspend timer
		 */
		FUNC2(&args, sizeof(args));
		args.eax = (APM_BIOS) << 8 | APM_RESUMETIMER;
		args.ebx = PMDV_APMBIOS;
		args.ecx = 0x0001;
		if (FUNC3(fd, APMIO_BIOS, &args)) {
			FUNC9("Resume timer: unknown\n");
		} else {
			apmerr = FUNC0(args.eax);
			if (apmerr == 0x0d || apmerr == 0x86)
				FUNC9("Resume timer: disabled\n");
			else if (apmerr)
				FUNC12(
		"failed to get the resume timer: APM error0x%x", apmerr);
			else {
				/*
				 * OK.  We have the time (all bcd).
				 * CH - seconds
				 * DH - hours
				 * DL - minutes
				 * xh(SI) - month (1-12)
				 * xl(SI) - day of month (1-31)
				 * DI - year
				 */
				struct tm tm;
				char buf[1024];
				time_t t;

				tm.tm_sec = FUNC1(FUNC13(args.ecx));
				tm.tm_min = FUNC1(FUNC14(args.edx));
				tm.tm_hour = FUNC1(FUNC13(args.edx));
				tm.tm_mday = FUNC1(FUNC14(args.esi));
				tm.tm_mon = FUNC1(FUNC13(args.esi)) - 1;
				tm.tm_year = FUNC1(args.edi) - 1900;
				if (cmos_wall)
					t = FUNC5(&tm);
				else
					t = FUNC11(&tm);
				if (t != -1) {
					tm = *FUNC4(&t);
					FUNC10(buf, sizeof(buf), "%c", &tm);
					FUNC9("Resume timer: %s\n", buf);
				} else
					FUNC9("Resume timer: unknown\n");
			}
		}

		/*
		 * Get the ring indicator resume state
		 */
		FUNC2(&args, sizeof(args));
		args.eax  = (APM_BIOS) << 8 | APM_RESUMEONRING;
		args.ebx = PMDV_APMBIOS;
		args.ecx = 0x0002;
		if (FUNC3(fd, APMIO_BIOS, &args) == 0) {
			FUNC9("Resume on ring indicator: %sabled\n",
			    args.ecx ? "en" : "dis");
		}
	}

	if (aip->ai_infoversion >= 1) {
		if (aip->ai_capabilities == 0xff00)
		    return;
		FUNC9("APM Capabilities:\n");
		if (aip->ai_capabilities & 0x01)
			FUNC9("\tglobal standby state\n");
		if (aip->ai_capabilities & 0x02)
			FUNC9("\tglobal suspend state\n");
		if (aip->ai_capabilities & 0x04)
			FUNC9("\tresume timer from standby\n");
		if (aip->ai_capabilities & 0x08)
			FUNC9("\tresume timer from suspend\n");
		if (aip->ai_capabilities & 0x10)
			FUNC9("\tRI resume from standby\n");
		if (aip->ai_capabilities & 0x20)
			FUNC9("\tRI resume from suspend\n");
		if (aip->ai_capabilities & 0x40)
			FUNC9("\tPCMCIA RI resume from standby\n");
		if (aip->ai_capabilities & 0x80)
			FUNC9("\tPCMCIA RI resume from suspend\n");
	}

}