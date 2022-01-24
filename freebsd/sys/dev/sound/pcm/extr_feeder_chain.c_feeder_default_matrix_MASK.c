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
typedef  int /*<<< orphan*/  uint32_t ;
struct pcmchan_matrix {int id; int* offset; int /*<<< orphan*/  ext; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SND_CHN_T_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct pcmchan_matrix*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct pcmchan_matrix *m, uint32_t fmt, int id)
{
	int x;

	FUNC2(m, 0, sizeof(*m));

	m->id = id;
	m->channels = FUNC0(fmt);
	m->ext = FUNC1(fmt);
	for (x = 0; x != SND_CHN_T_MAX; x++)
		m->offset[x] = -1;
}