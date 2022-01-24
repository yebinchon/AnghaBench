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
typedef  int /*<<< orphan*/  uint8_t ;
struct smt_entry {int dummy; } ;
struct smt_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct smt_entry* FUNC3 (struct smt_data*,int /*<<< orphan*/ *) ; 

struct smt_entry *
FUNC4(struct smt_data *s, uint8_t *smac)
{
	struct smt_entry *e;

	FUNC0(s != NULL);
	FUNC1(&s->lock);
	e = FUNC3(s, smac);
	FUNC2(&s->lock);
	return e;
}