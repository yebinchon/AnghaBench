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
struct pwm_state {int period; int duty; int enable; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IOCTL ; 
 int /*<<< orphan*/  O_RDWR ; 
 unsigned long const PWMGETSTATE ; 
 unsigned long const PWMSETSTATE ; 
 int PWM_DISABLE ; 
 int PWM_DUTY ; 
 int PWM_ENABLE ; 
 int PWM_PERIOD ; 
 int PWM_SHOW_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int,unsigned long const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* device_name ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int,char**,char*) ; 
 int FUNC10 (int,unsigned long const,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long const*) ; 
 int FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 

int
FUNC18(int argc, char *argv[])
{
	struct pwm_state state;
	int fd;
	int period, duty;
	int action, ch;
	cap_rights_t right_ioctl;
	const unsigned long pwm_ioctls[] = {PWMGETSTATE, PWMSETSTATE};
	char *percent;
	bool setname;

	action = 0;
	setname = false;
	fd = -1;
	period = duty = -1;

	while ((ch = FUNC9(argc, argv, "f:EDCp:d:")) != -1) {
		switch (ch) {
		case 'E':
			if (action & (PWM_DISABLE | PWM_SHOW_CONFIG))
				FUNC17();
			action |= PWM_ENABLE;
			break;
		case 'D':
			if (action & (PWM_ENABLE | PWM_SHOW_CONFIG))
				FUNC17();
			action |= PWM_DISABLE;
			break;
		case 'C':
			if (action)
				FUNC17();
			action = PWM_SHOW_CONFIG;
			break;
		case 'p':
			if (action & PWM_SHOW_CONFIG)
				FUNC17();
			action |= PWM_PERIOD;
			period = FUNC16(optarg, NULL, 10);
			break;
		case 'd':
			if (action & PWM_SHOW_CONFIG)
				FUNC17();
			action |= PWM_DUTY;
			duty = FUNC16(optarg, &percent, 10);
			if (*percent == '%') {
				if (duty < 0 || duty > 100) {
					FUNC8(stderr, 
					    "Invalid duty percentage\n");
					FUNC17();
				}
			} else if (*percent != '\0')
				FUNC17();
			break;
		case 'f':
			setname = true;
			FUNC14(optarg);
			break;
		case '?':
			FUNC17();
			break;
		}
	}

	if (action == 0)
		FUNC17();

	if ((fd = FUNC12(device_name, O_RDWR)) == -1) {
		FUNC8(stderr, "pwm: cannot open %s: %s\n",
		    device_name, FUNC15(errno));
		if (setname)
			FUNC7(1);
		else
			FUNC17();
	}

	if (FUNC4() < 0) {
		FUNC8(stderr, "can't limit stdio rights");
		goto fail;
	}
	FUNC1();
	FUNC0(&right_ioctl, CAP_IOCTL);
	if (FUNC5(fd, &right_ioctl) < 0) {
		FUNC8(stderr, "cap_right_limit() failed\n");
		goto fail;
	}
	if (FUNC3(fd, pwm_ioctls, FUNC11(pwm_ioctls)) < 0) {
		FUNC8(stderr, "caph_ioctls_limit() failed\n");
		goto fail;
	}
	if (FUNC2() < 0) {
		FUNC8(stderr, "failed to enter capability mode\n");
		goto fail;
	}

	/* Fill the common args */
	if (FUNC10(fd, PWMGETSTATE, &state) == -1) {
		FUNC8(stderr, "Cannot get current state of the pwm controller\n");
		goto fail;
	}

	if (action == PWM_SHOW_CONFIG) {
		FUNC13("period: %u\nduty: %u\nenabled:%d\n",
		    state.period,
		    state.duty,
		    state.enable);
		goto fail;
	} else {
		if (action & PWM_ENABLE)
			state.enable = true;
		if (action & PWM_DISABLE)
			state.enable = false;
		if (action & PWM_PERIOD)
			state.period = period;
		if (action & PWM_DUTY) {
			if (*percent != '\0')
				state.duty = state.period * duty / 100;
			else
				state.duty = duty;
		}
	
		if (FUNC10(fd, PWMSETSTATE, &state) == -1) {
			FUNC8(stderr,
			  "Cannot configure the pwm controller\n");
			goto fail;
		}
	}

	FUNC6(fd);
	return (0);

fail:
	FUNC6(fd);
	return (1);
}