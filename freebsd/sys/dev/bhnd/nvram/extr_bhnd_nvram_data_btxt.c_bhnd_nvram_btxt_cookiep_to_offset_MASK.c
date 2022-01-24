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
struct bhnd_nvram_btxt {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int) ; 
 uintptr_t SIZE_MAX ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,void const**,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t
FUNC4(struct bhnd_nvram_btxt *btxt, void *cookiep)
{
	const void	*ptr;
	intptr_t	 offset;
	size_t		 io_size;
	int		 error;

	FUNC0(cookiep != NULL, ("null cookiep"));

	io_size = FUNC2(btxt->data);
	error = FUNC3(btxt->data, 0x0, &ptr, io_size, NULL);
	if (error)
		FUNC1("error mapping offset %zu: %d", io_size, error);

	offset = (const uint8_t *)cookiep - (const uint8_t *)ptr;
	FUNC0(offset >= 0, ("invalid cookiep"));
	FUNC0((uintptr_t)offset < SIZE_MAX, ("cookiep > SIZE_MAX)"));
	FUNC0((uintptr_t)offset <= io_size, ("cookiep > io_size)"));

	return ((size_t)offset);
}