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
struct mpu401 {int /*<<< orphan*/  mid; scalar_t__ flags; void* cookie; int /*<<< orphan*/  si; int /*<<< orphan*/  timer; } ;
typedef  int /*<<< orphan*/  mpu401_intr_t ;
typedef  int /*<<< orphan*/  kobj_t ;
typedef  int /*<<< orphan*/  kobj_class_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_MIDI ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mpu401*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mpu401* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mpu401*) ; 
 int /*<<< orphan*/  mpu401_class ; 
 int /*<<< orphan*/ * mpu401_intr ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

struct mpu401 *
FUNC6(kobj_class_t cls, void *cookie, driver_intr_t softintr,
    mpu401_intr_t ** cb)
{
	struct mpu401 *m;

	*cb = NULL;
	m = FUNC3(sizeof(*m), M_MIDI, M_NOWAIT | M_ZERO);

	if (!m)
		return NULL;

	FUNC2((kobj_t)m, cls);

	FUNC0(&m->timer, 1);

	m->si = softintr;
	m->cookie = cookie;
	m->flags = 0;

	m->mid = FUNC4(&mpu401_class, 0, 0, m);
	if (!m->mid)
		goto err;
	*cb = mpu401_intr;
	return m;
err:
	FUNC5("mpu401_init error\n");
	FUNC1(m, M_MIDI);
	return NULL;
}