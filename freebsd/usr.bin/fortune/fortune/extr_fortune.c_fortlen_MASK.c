#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int str_flags; } ;
struct TYPE_4__ {TYPE_2__ tbl; int /*<<< orphan*/  inf; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int Fort_len ; 
 TYPE_1__* Fortfile ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__) ; 
 int STR_ORDERED ; 
 int STR_RANDOM ; 
 scalar_t__* Seekpts ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(void)
{
	int	nchar;
	char	line[BUFSIZ];

	if (!(Fortfile->tbl.str_flags & (STR_RANDOM | STR_ORDERED)))
		nchar = (int)(Seekpts[1] - Seekpts[0]);
	else {
		FUNC3(Fortfile);
		FUNC2(Fortfile->inf, Seekpts[0], SEEK_SET);
		nchar = 0;
		while (FUNC1(line, sizeof line, Fortfile->inf) != NULL &&
		       !FUNC0(line, Fortfile->tbl))
			nchar += FUNC4(line);
	}
	Fort_len = nchar;

	return (nchar);
}