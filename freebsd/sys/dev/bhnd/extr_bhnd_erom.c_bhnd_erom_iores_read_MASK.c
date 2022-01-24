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
typedef  int u_int ;
struct bhnd_erom_iores {int /*<<< orphan*/ * mapped; } ;
struct bhnd_erom_io {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static uint32_t
FUNC4(struct bhnd_erom_io *eio, bhnd_size_t offset, u_int width)
{
	struct bhnd_erom_iores *iores = (struct bhnd_erom_iores *)eio;

	if (iores->mapped == NULL)
		FUNC3("read with invalid mapping");

	switch (width) {
	case 1:
		return (FUNC0(iores->mapped, offset));
	case 2:
		return (FUNC1(iores->mapped, offset));
	case 4:
		return (FUNC2(iores->mapped, offset));
	default:
		FUNC3("invalid width %u", width);
	}
}