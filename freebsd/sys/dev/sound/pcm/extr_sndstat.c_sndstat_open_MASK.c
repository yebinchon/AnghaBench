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
struct thread {int dummy; } ;
struct sndstat_file {int /*<<< orphan*/  sbuf; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SBUF_AUTOEXTEND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sndstat_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sndstat_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC4 (struct sndstat_file*,int /*<<< orphan*/ ) ; 
 struct sndstat_file* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sndstat_close ; 
 int /*<<< orphan*/  sndstat_filelist ; 

__attribute__((used)) static int
FUNC7(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
	struct sndstat_file *pf;

	pf = FUNC5(sizeof(*pf), M_DEVBUF, M_WAITOK | M_ZERO);

	FUNC0();
	if (FUNC6(&pf->sbuf, NULL, 4096, SBUF_AUTOEXTEND) == NULL) {
	  	FUNC1();
		FUNC4(pf, M_DEVBUF);
		return (ENOMEM);
	}
	FUNC2(&sndstat_filelist, pf, entry);
	FUNC1();

	FUNC3(pf, &sndstat_close);

	return (0);
}