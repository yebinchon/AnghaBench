#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_10__ {int esc; int /*<<< orphan*/  cur_attr; int /*<<< orphan*/  num_param; } ;
typedef  TYPE_2__ term_stat ;
struct TYPE_11__ {TYPE_1__* sc; TYPE_2__* ts; } ;
typedef  TYPE_3__ scr_stat ;
struct TYPE_9__ {int /*<<< orphan*/  write_in_progress; int /*<<< orphan*/ * scr_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(scr_stat *scp, u_char *buf, int len)
{
	term_stat *tcp;

	tcp = scp->ts;
outloop:
	scp->sc->write_in_progress++;

	if (tcp->esc) {
		FUNC2(scp, tcp, *buf);
		buf++;
		len--;
	} else {
		switch (*buf) {
		case 0x1b:
			tcp->esc = 1;
			tcp->num_param = 0;
			buf++;
			len--;
			break;
		default:
			FUNC0(scp, &buf, &len, tcp->cur_attr);
			break;
		}
	}

	FUNC1(scp, scp->sc->scr_map[0x20], tcp->cur_attr);

	scp->sc->write_in_progress--;
	if (len)
		goto outloop;
}