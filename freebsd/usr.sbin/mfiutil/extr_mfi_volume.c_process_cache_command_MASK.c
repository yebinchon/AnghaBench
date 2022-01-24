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
typedef  int uint8_t ;
struct mfi_ld_props {int /*<<< orphan*/  disk_cache_policy; } ;

/* Variables and functions */
 int MR_LD_CACHE_ALLOW_READ_CACHE ; 
 int MR_LD_CACHE_ALLOW_WRITE_CACHE ; 
 int MR_LD_CACHE_READ_ADAPTIVE ; 
 int MR_LD_CACHE_READ_AHEAD ; 
 int MR_LD_CACHE_WRITE_BACK ; 
 int MR_LD_CACHE_WRITE_CACHE_BAD_BBU ; 
 int /*<<< orphan*/  MR_PD_CACHE_DISABLE ; 
 int /*<<< orphan*/  MR_PD_CACHE_ENABLE ; 
 int /*<<< orphan*/  MR_PD_CACHE_UNCHANGED ; 
 int /*<<< orphan*/  FUNC0 (struct mfi_ld_props*,int,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(int ac, char **av, struct mfi_ld_props *props)
{
	uint8_t policy;

	/* I/O cache settings. */
	if (FUNC1(av[0], "all") == 0 || FUNC1(av[0], "enable") == 0) {
		FUNC0(props, MR_LD_CACHE_ALLOW_READ_CACHE |
		    MR_LD_CACHE_ALLOW_WRITE_CACHE,
		    MR_LD_CACHE_ALLOW_READ_CACHE |
		    MR_LD_CACHE_ALLOW_WRITE_CACHE);
		return (1);
	}
	if (FUNC1(av[0], "none") == 0 || FUNC1(av[0], "disable") == 0) {
		FUNC0(props, 0, MR_LD_CACHE_ALLOW_READ_CACHE |
		    MR_LD_CACHE_ALLOW_WRITE_CACHE);
		return (1);
	}
	if (FUNC1(av[0], "reads") == 0) {
 		FUNC0(props, MR_LD_CACHE_ALLOW_READ_CACHE,
		    MR_LD_CACHE_ALLOW_READ_CACHE |
		    MR_LD_CACHE_ALLOW_WRITE_CACHE);
		return (1);
	}
	if (FUNC1(av[0], "writes") == 0) {
		FUNC0(props, MR_LD_CACHE_ALLOW_WRITE_CACHE,
		    MR_LD_CACHE_ALLOW_READ_CACHE |
		    MR_LD_CACHE_ALLOW_WRITE_CACHE);
		return (1);
	}

	/* Write cache behavior. */
	if (FUNC1(av[0], "write-back") == 0) {
		FUNC0(props, MR_LD_CACHE_WRITE_BACK,
		    MR_LD_CACHE_WRITE_BACK);
		return (1);
	}
	if (FUNC1(av[0], "write-through") == 0) {
		FUNC0(props, 0, MR_LD_CACHE_WRITE_BACK);
		return (1);
	}
	if (FUNC1(av[0], "bad-bbu-write-cache") == 0) {
		if (ac < 2) {
			FUNC2("cache: bad BBU setting required");
			return (-1);
		}
		if (FUNC1(av[1], "enable") == 0)
			policy = MR_LD_CACHE_WRITE_CACHE_BAD_BBU;
		else if (FUNC1(av[1], "disable") == 0)
			policy = 0;
		else {
			FUNC2("cache: invalid bad BBU setting");
			return (-1);
		}
		FUNC0(props, policy,
		    MR_LD_CACHE_WRITE_CACHE_BAD_BBU);
		return (2);
	}

	/* Read cache behavior. */
	if (FUNC1(av[0], "read-ahead") == 0) {
		if (ac < 2) {
			FUNC2("cache: read-ahead setting required");
			return (-1);
		}
		if (FUNC1(av[1], "none") == 0)
			policy = 0;
		else if (FUNC1(av[1], "always") == 0)
			policy = MR_LD_CACHE_READ_AHEAD;
		else if (FUNC1(av[1], "adaptive") == 0)
			policy = MR_LD_CACHE_READ_AHEAD |
			    MR_LD_CACHE_READ_ADAPTIVE;
		else {
			FUNC2("cache: invalid read-ahead setting");
			return (-1);
		}
		FUNC0(props, policy, MR_LD_CACHE_READ_AHEAD |
			    MR_LD_CACHE_READ_ADAPTIVE);
		return (2);
	}

	/* Drive write-cache behavior. */
	if (FUNC1(av[0], "write-cache") == 0) {
		if (ac < 2) {
			FUNC2("cache: write-cache setting required");
			return (-1);
		}
		if (FUNC1(av[1], "enable") == 0)
			props->disk_cache_policy = MR_PD_CACHE_ENABLE;
		else if (FUNC1(av[1], "disable") == 0)
			props->disk_cache_policy = MR_PD_CACHE_DISABLE;
		else if (FUNC1(av[1], "default") == 0)
			props->disk_cache_policy = MR_PD_CACHE_UNCHANGED;
		else {
			FUNC2("cache: invalid write-cache setting");
			return (-1);
		}
		return (2);
	}

	FUNC2("cache: Invalid command");
	return (-1);
}