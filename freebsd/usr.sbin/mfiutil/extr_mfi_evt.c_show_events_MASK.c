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
struct TYPE_3__ {int /*<<< orphan*/  locale; int /*<<< orphan*/  evt_class; scalar_t__ reserved; } ;
union mfi_evt {TYPE_1__ members; } ;
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  size_t u_int ;
struct mfi_evt_log_state {scalar_t__ boot_seq_num; scalar_t__ newest_seq_num; } ;
struct mfi_evt_list {size_t count; TYPE_2__* event; } ;
struct mfi_evt_detail {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {scalar_t__ seq; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MFI_EVT_CLASS_WARNING ; 
 int /*<<< orphan*/  MFI_EVT_LOCALE_ALL ; 
 scalar_t__ MFI_STAT_NOT_FOUND ; 
 scalar_t__ MFI_STAT_OK ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct mfi_evt_list*) ; 
 int FUNC2 (int,char**,char*) ; 
 int FUNC3 () ; 
 struct mfi_evt_list* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_2__*,int) ; 
 scalar_t__ FUNC6 (int,struct mfi_evt_log_state*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,struct mfi_evt_list*,int,union mfi_evt,scalar_t__,scalar_t__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  mfi_unit ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct mfi_evt_log_state*,char*,scalar_t__*) ; 
 long FUNC13 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 

__attribute__((used)) static int
FUNC16(int ac, char **av)
{
	struct mfi_evt_log_state info;
	struct mfi_evt_list *list;
	union mfi_evt filter;
	bool first;
	long val;
	char *cp;
	ssize_t size;
	uint32_t seq, start, stop;
	uint16_t locale;
	uint8_t status;
	int ch, error, fd, num_events, verbose;
	u_int i;

	fd = FUNC8(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC14("mfi_open");
		return (error);
	}

	if (FUNC6(fd, &info, NULL) < 0) {
		error = errno;
		FUNC14("Failed to get event log info");
		FUNC0(fd);
		return (error);
	}

	/* Default settings. */
	num_events = 15;
	filter.members.reserved = 0;
	filter.members.locale = MFI_EVT_LOCALE_ALL;
	filter.members.evt_class = MFI_EVT_CLASS_WARNING;
	start = info.boot_seq_num;
	stop = info.newest_seq_num;
	verbose = 0;

	/* Parse any options. */
	optind = 1;
	while ((ch = FUNC2(ac, av, "c:l:n:v")) != -1) {
		switch (ch) {
		case 'c':
			if (FUNC10(optarg, &filter.members.evt_class) < 0) {
				error = errno;
				FUNC14("Error parsing event class");
				FUNC0(fd);
				return (error);
			}
			break;
		case 'l':
			if (FUNC11(optarg, &locale) < 0) {
				error = errno;
				FUNC14("Error parsing event locale");
				FUNC0(fd);
				return (error);
			}
			filter.members.locale = locale;
			break;
		case 'n':
			val = FUNC13(optarg, &cp, 0);
			if (*cp != '\0' || val <= 0) {
				FUNC15("Invalid event count");
				FUNC0(fd);
				return (EINVAL);
			}
			num_events = val;
			break;
		case 'v':
			verbose = 1;
			break;
		case '?':
		default:
			FUNC0(fd);
			return (EINVAL);
		}
	}
	ac -= optind;
	av += optind;

	/* Determine buffer size and validate it. */
	size = sizeof(struct mfi_evt_list) + sizeof(struct mfi_evt_detail) *
	    (num_events - 1);
	if (size > FUNC3()) {
		FUNC15("Event count is too high");
		FUNC0(fd);
		return (EINVAL);
	}

	/* Handle optional start and stop sequence numbers. */
	if (ac > 2) {
		FUNC15("show events: extra arguments");
		FUNC0(fd);
		return (EINVAL);
	}
	if (ac > 0 && FUNC12(&info, av[0], &start) < 0) {
		error = errno;
		FUNC14("Error parsing starting sequence number");
		FUNC0(fd);
		return (error);
	}
	if (ac > 1 && FUNC12(&info, av[1], &stop) < 0) {
		error = errno;
		FUNC14("Error parsing ending sequence number");
		FUNC0(fd);
		return (error);
	}

	list = FUNC4(size);
	if (list == NULL) {
		FUNC15("malloc failed");
		FUNC0(fd);
		return (ENOMEM);
	}
	first = true;
	seq = start;
	for (;;) {
		if (FUNC7(fd, list, num_events, filter, seq,
		    &status) < 0) {
			error = errno;
			FUNC14("Failed to fetch events");
			FUNC1(list);
			FUNC0(fd);
			return (error);
		}
		if (status == MFI_STAT_NOT_FOUND) {
			break;
		}
		if (status != MFI_STAT_OK) {
			FUNC15("Error fetching events: %s", FUNC9(status));
			FUNC1(list);
			FUNC0(fd);
			return (EIO);
		}

		for (i = 0; i < list->count; i++) {
			/*
			 * If this event is newer than 'stop_seq' then
			 * break out of the loop.  Note that the log
			 * is a circular buffer so we have to handle
			 * the case that our stop point is earlier in
			 * the buffer than our start point.
			 */
			if (list->event[i].seq > stop) {
				if (start <= stop)
					goto finish;
				else if (list->event[i].seq < start)
					goto finish;
			}
			FUNC5(fd, &list->event[i], verbose);
			first = false;
		}

		/*
		 * XXX: If the event's seq # is the end of the buffer
		 * then this probably won't do the right thing.  We
		 * need to know the size of the buffer somehow.
		 */
		seq = list->event[list->count - 1].seq + 1;
			
	}
finish:
	if (first)
		FUNC15("No matching events found");

	FUNC1(list);
	FUNC0(fd);

	return (0);
}