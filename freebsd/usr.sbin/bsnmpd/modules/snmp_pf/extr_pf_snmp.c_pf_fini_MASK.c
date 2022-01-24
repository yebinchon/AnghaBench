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
struct pft_entry {int dummy; } ;
typedef  struct pft_entry pfq_entry ;
typedef  struct pft_entry pfl_entry ;
typedef  struct pft_entry pfi_entry ;
typedef  struct pft_entry pfa_entry ;

/* Variables and functions */
 struct pft_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 struct pft_entry* FUNC1 (struct pft_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC3 (struct pft_entry*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  pfa_table ; 
 int /*<<< orphan*/  pfi_table ; 
 int /*<<< orphan*/  pfl_table ; 
 int /*<<< orphan*/  pfq_table ; 
 int /*<<< orphan*/  pft_table ; 

__attribute__((used)) static int
FUNC4(void)
{
	struct pfi_entry *i1, *i2;
	struct pfq_entry *q1, *q2;
	struct pft_entry *t1, *t2;
	struct pfa_entry *a1, *a2;
	struct pfl_entry *l1, *l2;

	/* Empty the list of interfaces */
	i1 = FUNC0(&pfi_table);
	while (i1 != NULL) {
		i2 = FUNC1(i1, link);
		FUNC3(i1);
		i1 = i2;
	}

	/* List of queues */
	q1 = FUNC0(&pfq_table);
	while (q1 != NULL) {
		q2 = FUNC1(q1, link);
		FUNC3(q1);
		q1 = q2;
	}

	/* List of tables */
	t1 = FUNC0(&pft_table);
	while (t1 != NULL) {
		t2 = FUNC1(t1, link);
		FUNC3(t1);
		t1 = t2;
	}

	/* List of table addresses */
	a1 = FUNC0(&pfa_table);
	while (a1 != NULL) {
		a2 = FUNC1(a1, link);
		FUNC3(a1);
		a1 = a2;
	}

	/* And the list of labeled filter rules */
	l1 = FUNC0(&pfl_table);
	while (l1 != NULL) {
		l2 = FUNC1(l1, link);
		FUNC3(l1);
		l1 = l2;
	}

	FUNC2(dev);
	return (0);
}