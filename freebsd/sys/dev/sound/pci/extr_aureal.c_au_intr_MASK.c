#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;
struct au_info {int unit; TYPE_1__ pch; int /*<<< orphan*/  interrupts; } ;

/* Variables and functions */
 int AU_BUFFSIZE ; 
 int AU_IRQ_FATAL ; 
 int AU_IRQ_PARITY ; 
 int AU_IRQ_PCMOUT ; 
 int AU_IRQ_UNKNOWN ; 
 int /*<<< orphan*/  AU_REG_IRQSRC ; 
 int /*<<< orphan*/  AU_REG_UNK1 ; 
 int /*<<< orphan*/  AU_REG_UNK2 ; 
 int /*<<< orphan*/  AU_REG_UNK3 ; 
 int /*<<< orphan*/  AU_REG_UNK4 ; 
 int /*<<< orphan*/  AU_REG_UNK5 ; 
 int FUNC0 (struct au_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct au_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 

__attribute__((used)) static void
FUNC4 (void *p)
{
	struct au_info *au = p;
	u_int32_t	intsrc, i;

	au->interrupts++;
	intsrc=FUNC0(au, 0, AU_REG_IRQSRC, 4);
	FUNC3("pcm%d: interrupt with src %x\n", au->unit, intsrc);
	if (intsrc & AU_IRQ_FATAL) FUNC3("pcm%d: fatal error irq\n", au->unit);
	if (intsrc & AU_IRQ_PARITY) FUNC3("pcm%d: parity error irq\n", au->unit);
	if (intsrc & AU_IRQ_UNKNOWN) {
		(void)FUNC0(au, 0, AU_REG_UNK1, 4);
		FUNC1(au, 0, AU_REG_UNK1, 0, 4);
		FUNC1(au, 0, AU_REG_UNK1, 0x10000, 4);
	}
	if (intsrc & AU_IRQ_PCMOUT) {
	       	i=FUNC0(au, 0, AU_REG_UNK2, 4) & (AU_BUFFSIZE-1);
	       	FUNC2(au->pch.channel);
		(void)FUNC0(au, 0, AU_REG_UNK3, 4);
		(void)FUNC0(au, 0, AU_REG_UNK4, 4);
		(void)FUNC0(au, 0, AU_REG_UNK5, 4);
	}
/* don't support midi
	if (intsrc & AU_IRQ_MIDI) {
		i=au_rd(au, 0, 0x11004, 4);
		j=10;
		while (i & 0xff) {
			if (j-- <= 0) break;
			i=au_rd(au, 0, 0x11000, 4);
			if ((au->midi_stat & 1) && (au->midi_out))
				au->midi_out(au->midi_devno, i);
			i=au_rd(au, 0, 0x11004);
		}
	}
*/
	FUNC1(au, 0, AU_REG_IRQSRC, intsrc & 0x7ff, 4);
	FUNC0(au, 0, AU_REG_IRQSRC, 4);
}