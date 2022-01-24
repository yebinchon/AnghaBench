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
struct sndstat_file {int /*<<< orphan*/  sbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sndstat_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC3 (struct sndstat_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sndstat_filelist ; 

__attribute__((used)) static void
FUNC5(void *sndstat_file)
{
	struct sndstat_file *pf = (struct sndstat_file *)sndstat_file;

	FUNC0();
	FUNC4(&pf->sbuf);
	FUNC2(&sndstat_filelist, pf, entry);
	FUNC1();

	FUNC3(pf, M_DEVBUF);
}