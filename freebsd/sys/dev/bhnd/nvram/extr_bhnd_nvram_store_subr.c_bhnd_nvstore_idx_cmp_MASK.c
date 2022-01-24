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
struct bhnd_nvram_store {int data_caps; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int BHND_NVRAM_DATA_CAP_DEVPATHS ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvram_store*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 char* FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,void*) ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC5(void *ctx, const void *lhs, const void *rhs)
{
	struct bhnd_nvram_store	*sc;
	void			*l_cookiep, *r_cookiep;
	const char		*l_str, *r_str;
	const char		*l_name, *r_name;
	int			 order;

	sc = ctx;
	l_cookiep = *(void * const *)lhs;
	r_cookiep = *(void * const *)rhs;

	FUNC0(sc, MA_OWNED);

	/* Fetch string pointers from the cookiep values */
	l_str = FUNC1(sc->data, l_cookiep);
	r_str = FUNC1(sc->data, r_cookiep);

	/* Trim device path prefixes */
	if (sc->data_caps & BHND_NVRAM_DATA_CAP_DEVPATHS) {
		l_name = FUNC3(l_str);
		r_name = FUNC3(r_str);
	} else {
		l_name = l_str;
		r_name = r_str;
	}

	/* Perform comparison */
	order = FUNC4(l_name, r_name);
	if (order != 0 || lhs == rhs)
		return (order);

	/* If the backing data incorrectly contains variables with duplicate
	 * names, we need a sort order that provides stable behavior.
	 * 
	 * Since Broadcom's own code varies wildly on this question, we just
	 * use a simple precedence rule: The first declaration of a variable
	 * takes precedence. */
	return (FUNC2(sc->data, l_cookiep, r_cookiep));
}