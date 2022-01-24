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
struct sc_chinfo {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  PCMTRIG_ABORT 130 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct sc_chinfo*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_chinfo*) ; 

__attribute__((used)) static int
FUNC2(kobj_t obj, void *data, int go)
{
    struct sc_chinfo *ch = data;

    switch(go) {
    case PCMTRIG_START:
	FUNC1(ch);
	FUNC0(ch, 1);
	break;
    case PCMTRIG_STOP:
    case PCMTRIG_ABORT:
	FUNC0(ch, 0);
	break;
    default:
	break;
    }

    /* return 0 if ok */
    return 0;
}