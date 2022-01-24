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
struct hdaa_chan {int /*<<< orphan*/  devinfo; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  PCMTRIG_ABORT 130 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int FUNC1 (struct hdaa_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdaa_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(kobj_t obj, void *data, int go)
{
	struct hdaa_chan *ch = data;
	int error = 0;

	if (!FUNC0(go))
		return (0);

	FUNC3(ch->devinfo);
	switch (go) {
	case PCMTRIG_START:
		error = FUNC1(ch);
		break;
	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
		FUNC2(ch);
		break;
	default:
		break;
	}
	FUNC4(ch->devinfo);

	return (error);
}