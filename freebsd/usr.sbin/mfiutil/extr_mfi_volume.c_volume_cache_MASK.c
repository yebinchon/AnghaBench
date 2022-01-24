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
struct mfi_ld_props {int default_cache_policy; int disk_cache_policy; int current_cache_policy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MR_LD_CACHE_ALLOW_READ_CACHE 132 
#define  MR_LD_CACHE_ALLOW_WRITE_CACHE 131 
 int MR_LD_CACHE_READ_ADAPTIVE ; 
 int MR_LD_CACHE_READ_AHEAD ; 
 int MR_LD_CACHE_WRITE_BACK ; 
 int MR_LD_CACHE_WRITE_CACHE_BAD_BBU ; 
#define  MR_PD_CACHE_DISABLE 130 
#define  MR_PD_CACHE_ENABLE 129 
#define  MR_PD_CACHE_UNCHANGED 128 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct mfi_ld_props*) ; 
 scalar_t__ FUNC2 (int,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int mfi_unit ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int,char**,struct mfi_ld_props*) ; 
 int FUNC7 (int,struct mfi_ld_props*,struct mfi_ld_props*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(int ac, char **av)
{
	struct mfi_ld_props props, new;
	int error, fd, consumed;
	uint8_t target_id;

	if (ac < 2) {
		FUNC9("cache: volume required");
		return (EINVAL);
	}

	fd = FUNC3(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC8("mfi_open");
		return (error);
	}

	if (FUNC2(fd, av[1], &target_id) < 0) {
		error = errno;
		FUNC8("Invalid volume: %s", av[1]);
		FUNC0(fd);
		return (error);
	}

	if (FUNC1(fd, target_id, &props) < 0) {
		error = errno;
		FUNC8("Failed to fetch volume properties");
		FUNC0(fd);
		return (error);
	}

	if (ac == 2) {
		FUNC5("mfi%u volume %s cache settings:\n", mfi_unit,
		    FUNC4(fd, target_id));
		FUNC5("             I/O caching: ");
		switch (props.default_cache_policy &
		    (MR_LD_CACHE_ALLOW_WRITE_CACHE |
		    MR_LD_CACHE_ALLOW_READ_CACHE)) {
		case 0:
			FUNC5("disabled\n");
			break;
		case MR_LD_CACHE_ALLOW_WRITE_CACHE:
			FUNC5("writes\n");
			break;
		case MR_LD_CACHE_ALLOW_READ_CACHE:
			FUNC5("reads\n");
			break;
		case MR_LD_CACHE_ALLOW_WRITE_CACHE |
		    MR_LD_CACHE_ALLOW_READ_CACHE:
			FUNC5("writes and reads\n");
			break;
		}
		FUNC5("           write caching: %s\n",
		    props.default_cache_policy & MR_LD_CACHE_WRITE_BACK ?
		    "write-back" : "write-through");
		FUNC5("write cache with bad BBU: %s\n",
		    props.default_cache_policy &
		    MR_LD_CACHE_WRITE_CACHE_BAD_BBU ? "enabled" : "disabled");
		FUNC5("              read ahead: %s\n",
		    props.default_cache_policy & MR_LD_CACHE_READ_AHEAD ?
		    (props.default_cache_policy & MR_LD_CACHE_READ_ADAPTIVE ?
		    "adaptive" : "always") : "none");
		FUNC5("       drive write cache: ");
		switch (props.disk_cache_policy) {
		case MR_PD_CACHE_UNCHANGED:
			FUNC5("default\n");
			break;
		case MR_PD_CACHE_ENABLE:
			FUNC5("enabled\n");
			break;
		case MR_PD_CACHE_DISABLE:
			FUNC5("disabled\n");
			break;
		default:
			FUNC5("??? %d\n", props.disk_cache_policy);
			break;
		}
		if (props.default_cache_policy != props.current_cache_policy)
			FUNC5(
	"Cache disabled due to dead battery or ongoing battery relearn\n");
		error = 0;
	} else {
		new = props;
		av += 2;
		ac -= 2;
		while (ac > 0) {
			consumed = FUNC6(ac, av, &new);
			if (consumed < 0) {
				FUNC0(fd);
				return (EINVAL);
			}
			av += consumed;
			ac -= consumed;
		}
		error = FUNC7(fd, &props, &new);
	}
	FUNC0(fd);

	return (error);
}