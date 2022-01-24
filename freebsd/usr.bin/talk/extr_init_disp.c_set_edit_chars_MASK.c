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
struct termios {char* c_cc; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {char cerase; char kill; char werase; } ;
struct TYPE_3__ {char cerase; char kill; char werase; } ;

/* Variables and functions */
 char CERASE ; 
 char CKILL ; 
 char CWERASE ; 
 size_t VERASE ; 
 size_t VKILL ; 
 size_t VWERASE ; 
 scalar_t__ _POSIX_VDISABLE ; 
 TYPE_2__ his_win ; 
 TYPE_1__ my_win ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  sockt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct termios*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC4(void)
{
	char buf[3];
	int cc;
	struct termios tio;

	FUNC2(0, &tio);
	my_win.cerase = tio.c_cc[VERASE];
	my_win.kill = tio.c_cc[VKILL];
	my_win.werase = tio.c_cc[VWERASE];
	if (my_win.cerase == (char)_POSIX_VDISABLE)
		my_win.kill = CERASE;
	if (my_win.kill == (char)_POSIX_VDISABLE)
		my_win.kill = CKILL;
	if (my_win.werase == (char)_POSIX_VDISABLE)
		my_win.werase = CWERASE;
	buf[0] = my_win.cerase;
	buf[1] = my_win.kill;
	buf[2] = my_win.werase;
	cc = FUNC3(sockt, buf, sizeof(buf));
	if (cc != sizeof(buf) )
		FUNC0("Lost the connection");
	cc = FUNC1(sockt, buf, sizeof(buf));
	if (cc != sizeof(buf) )
		FUNC0("Lost the connection");
	his_win.cerase = buf[0];
	his_win.kill = buf[1];
	his_win.werase = buf[2];
}