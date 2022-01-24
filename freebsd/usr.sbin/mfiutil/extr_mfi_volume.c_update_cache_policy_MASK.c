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
struct mfi_ld_props {int default_cache_policy; int disk_cache_policy; } ;

/* Variables and functions */
 int MR_LD_CACHE_ALLOW_READ_CACHE ; 
 int MR_LD_CACHE_ALLOW_WRITE_CACHE ; 
 int MR_LD_CACHE_READ_ADAPTIVE ; 
 int MR_LD_CACHE_READ_AHEAD ; 
 int MR_LD_CACHE_WRITE_BACK ; 
 int MR_LD_CACHE_WRITE_CACHE_BAD_BBU ; 
#define  MR_PD_CACHE_DISABLE 130 
#define  MR_PD_CACHE_ENABLE 129 
#define  MR_PD_CACHE_UNCHANGED 128 
 int errno ; 
 scalar_t__ FUNC0 (int,struct mfi_ld_props*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(int fd, struct mfi_ld_props *old, struct mfi_ld_props *new)
{
	int error;
	uint8_t changes, policy;

	if (old->default_cache_policy == new->default_cache_policy &&
	    old->disk_cache_policy == new->disk_cache_policy)
		return (0);
	policy = new->default_cache_policy;
	changes = policy ^ old->default_cache_policy;
	if (changes & MR_LD_CACHE_ALLOW_WRITE_CACHE)
		FUNC1("%s caching of I/O writes\n",
		    policy & MR_LD_CACHE_ALLOW_WRITE_CACHE ? "Enabling" :
		    "Disabling");
	if (changes & MR_LD_CACHE_ALLOW_READ_CACHE)
		FUNC1("%s caching of I/O reads\n",
		    policy & MR_LD_CACHE_ALLOW_READ_CACHE ? "Enabling" :
		    "Disabling");
	if (changes & MR_LD_CACHE_WRITE_BACK)
		FUNC1("Setting write cache policy to %s\n",
		    policy & MR_LD_CACHE_WRITE_BACK ? "write-back" :
		    "write-through");
	if (changes & (MR_LD_CACHE_READ_AHEAD | MR_LD_CACHE_READ_ADAPTIVE))
		FUNC1("Setting read ahead policy to %s\n",
		    policy & MR_LD_CACHE_READ_AHEAD ?
		    (policy & MR_LD_CACHE_READ_ADAPTIVE ?
		    "adaptive" : "always") : "none");
	if (changes & MR_LD_CACHE_WRITE_CACHE_BAD_BBU)
		FUNC1("%s write caching with bad BBU\n",
		    policy & MR_LD_CACHE_WRITE_CACHE_BAD_BBU ? "Enabling" :
		    "Disabling");
	if (old->disk_cache_policy != new->disk_cache_policy) {
		switch (new->disk_cache_policy) {
		case MR_PD_CACHE_ENABLE:
			FUNC1("Enabling write-cache on physical drives\n");
			break;
		case MR_PD_CACHE_DISABLE:
			FUNC1("Disabling write-cache on physical drives\n");
			break;
		case MR_PD_CACHE_UNCHANGED:
			FUNC1("Using default write-cache setting on physical drives\n");
			break;
		}
	}

	if (FUNC0(fd, new) < 0) {
		error = errno;
		FUNC2("Failed to set volume properties");
		return (error);
	}
	return (0);
}