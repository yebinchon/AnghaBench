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
typedef  int /*<<< orphan*/  uef ;
struct ufs_extattr_fileheader {int uef_size; int /*<<< orphan*/  uef_version; int /*<<< orphan*/  uef_magic; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  UFS_EXTATTR_MAGIC ; 
 int /*<<< orphan*/  UFS_EXTATTR_VERSION ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**,char*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*,int,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int,struct ufs_extattr_fileheader*,size_t) ; 
 struct ufs_extattr_fileheader* zero_buf ; 

int
FUNC9(int argc, char *argv[])
{
	struct ufs_extattr_fileheader	uef;
	char	*fs_path = NULL;
	int	ch, i, error, flags;
	ssize_t	wlen;
	size_t	easize;

	flags = O_CREAT | O_WRONLY | O_TRUNC | O_EXCL;
	optind = 0;
	while ((ch = FUNC2(argc, argv, "fp:r:w:")) != -1)
		switch (ch) {
		case 'f':
			flags &= ~O_EXCL;
			break;
		case 'p':
			fs_path = optarg;
			break;
		case '?':
		default:
			FUNC7();
		}

	argc -= optind;
	argv += optind;

	if (argc != 2)
		FUNC7();

	error = 0;
	if ((i = FUNC4(argv[1], flags, 0600)) == -1) {
		/* unable to open file */
		FUNC5(argv[1]);
		return (-1);
	}
	uef.uef_magic = UFS_EXTATTR_MAGIC;
	uef.uef_version = UFS_EXTATTR_VERSION;
	uef.uef_size = FUNC0(argv[0]);
	if (FUNC8(i, &uef, sizeof(uef)) == -1)
		error = -1;
	else if (fs_path != NULL) {
		easize = (sizeof uef + uef.uef_size) *
		    FUNC3(fs_path);
		while (easize > 0) {
			if (easize > sizeof zero_buf)
				wlen = FUNC8(i, zero_buf, sizeof zero_buf);
			else
				wlen = FUNC8(i, zero_buf, easize);
			if (wlen == -1) {
				error = -1;
				break;
			}
			easize -= wlen;
		}
	}
	if (error == -1) {
		FUNC5(argv[1]);
		FUNC6(argv[1]);
		FUNC1(i);
		return (-1);
	}

	FUNC1(i);
	return (0);
}