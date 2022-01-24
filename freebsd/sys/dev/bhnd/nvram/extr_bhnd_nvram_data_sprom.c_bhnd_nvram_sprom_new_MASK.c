#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bhnd_nvram_sprom {int /*<<< orphan*/ * data; TYPE_1__* layout; int /*<<< orphan*/  state; } ;
struct bhnd_nvram_io {int dummy; } ;
struct bhnd_nvram_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct bhnd_nvram_io*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bhnd_nvram_io*,TYPE_1__**) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(struct bhnd_nvram_data *nv, struct bhnd_nvram_io *io)
{
	struct bhnd_nvram_sprom	*sp;
	int			 error;

	sp = (struct bhnd_nvram_sprom *)nv;

	/* Identify the SPROM input data */
	if ((error = FUNC2(io, &sp->layout)))
		return (error);

	/* Copy SPROM image to our shadow buffer */
	sp->data = FUNC1(io, 0, sp->layout->size);
	if (sp->data == NULL)
		goto failed;

	/* Initialize SPROM binding eval state */
	if ((error = FUNC3(&sp->state, sp->layout)))
		goto failed;

	return (0);

failed:
	if (sp->data != NULL)
		FUNC0(sp->data);

	return (error);
}