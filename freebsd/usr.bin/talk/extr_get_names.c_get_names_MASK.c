#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct passwd {char* pw_name; } ;
typedef  int /*<<< orphan*/  hostname ;
struct TYPE_5__ {void* sa_family; } ;
struct TYPE_4__ {void* sa_family; } ;
struct TYPE_6__ {int /*<<< orphan*/  r_tty; int /*<<< orphan*/  r_name; int /*<<< orphan*/  l_name; int /*<<< orphan*/  id_num; TYPE_2__ ctl_addr; TYPE_1__ addr; int /*<<< orphan*/  vers; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  NAME_SIZE ; 
 int /*<<< orphan*/  TALK_VERSION ; 
 int /*<<< orphan*/  TTY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 char* FUNC3 () ; 
 struct passwd* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__ msg ; 
 int FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

void
FUNC12(int argc, char *argv[])
{
	char hostname[MAXHOSTNAMELEN];
	char *his_name, *my_name;
	const char *my_machine_name, *his_machine_name;
	const char *his_tty;
	char *cp;

	if (argc < 2 )
		FUNC11();
	if (!FUNC8(0))
		FUNC0(1, "standard input must be a tty, not a pipe or a file");
	if ((my_name = FUNC3()) == NULL) {
		struct passwd *pw;

		if ((pw = FUNC4(FUNC5())) == NULL)
			FUNC0(1, "you don't exist. Go away");
		my_name = pw->pw_name;
	}
	FUNC2(hostname, sizeof (hostname));
	my_machine_name = hostname;
	/* check for, and strip out, the machine name of the target */
	cp = argv[1] + FUNC9(argv[1], "@:!");
	if (*cp == '\0') {
		/* this is a local to local talk */
		his_name = argv[1];
		my_machine_name = his_machine_name = "localhost";
	} else {
		if (*cp++ == '@') {
			/* user@host */
			his_name = argv[1];
			his_machine_name = cp;
		} else {
			/* host!user or host:user */
			his_name = cp;
			his_machine_name = argv[1];
		}
		*--cp = '\0';
	}
	if (argc > 2)
		his_tty = argv[2];	/* tty name is arg 2 */
	else
		his_tty = "";
	FUNC1(my_machine_name, his_machine_name);
	/*
	 * Initialize the message template.
	 */
	msg.vers = TALK_VERSION;
	msg.addr.sa_family = FUNC7(AF_INET);
	msg.ctl_addr.sa_family = FUNC7(AF_INET);
	msg.id_num = FUNC6(0);
	FUNC10(msg.l_name, my_name, NAME_SIZE);
	FUNC10(msg.r_name, his_name, NAME_SIZE);
	FUNC10(msg.r_tty, his_tty, TTY_SIZE);
}