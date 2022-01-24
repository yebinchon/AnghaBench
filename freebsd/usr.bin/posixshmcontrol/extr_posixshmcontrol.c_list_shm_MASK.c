#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char* uintmax_t ;
struct stat {int st_uid; int st_gid; } ;
struct TYPE_3__ {scalar_t__ kf_file_size; int /*<<< orphan*/  kf_file_mode; } ;
struct TYPE_4__ {TYPE_1__ kf_file; } ;
struct kinfo_file {scalar_t__ kf_structsize; char* kf_path; TYPE_2__ kf_un; } ;
typedef  int /*<<< orphan*/  sizebuf ;

/* Variables and functions */
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int /*<<< orphan*/  HN_NOSPACE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,struct stat*) ; 
 int FUNC3 (int,char**,char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* listmib ; 
 char* FUNC6 (size_t) ; 
 size_t FUNC7 (int*) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int*,size_t,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (char*,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 char* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 

__attribute__((used)) static int
FUNC16(int argc, char **argv)
{
	char *buf, *bp, sizebuf[8], str[10];
	const struct kinfo_file *kif;
	struct stat st;
	int c, error, fd, mib[3], ret;
	size_t len, miblen;
	bool hsize, uname;

	hsize = false;
	uname = true;

	while ((c = FUNC3(argc, argv, "hn")) != -1) {
		switch (c) {
		case 'h':
			hsize = true;
			break;
		case 'n':
			uname = false;
			break;
		default:
			FUNC13();
			return (2);
		}
	}
	if (argc != optind) {
		FUNC13();
		return (2);
	}

	miblen = FUNC7(mib);
	error = FUNC12(listmib, mib, &miblen);
	if (error == -1) {
		FUNC15("cannot translate %s", listmib);
		return (1);
	}
	len = 0;
	error = FUNC11(mib, miblen, NULL, &len, NULL, 0);
	if (error == -1) {
		FUNC15("cannot get %s length", listmib);
		return (1);
	}
	len = len * 4 / 3;
	buf = FUNC6(len);
	if (buf == NULL) {
		FUNC15("malloc");
		return (1);
	}
	error = FUNC11(mib, miblen, buf, &len, NULL, 0);
	if (error != 0) {
		FUNC15("reading %s", listmib);
		ret = 1;
		goto out;
	}
	ret = 0;
	FUNC8("MODE    \tOWNER\tGROUP\tSIZE\tPATH\n");
	for (bp = buf; bp < buf + len; bp += kif->kf_structsize) {
		kif = (const struct kinfo_file *)(void *)bp;
		if (kif->kf_structsize == 0)
			break;
		fd = FUNC10(kif->kf_path, O_RDONLY, 0);
		if (fd == -1) {
			FUNC15("open %s", kif->kf_path);
			ret = 1;
			continue;
		}
		error = FUNC2(fd, &st);
		FUNC0(fd);
		if (error != 0) {
			FUNC15("stat %s", kif->kf_path);
			ret = 1;
			continue;
		}
		FUNC9(kif->kf_un.kf_file.kf_file_mode, str);
		FUNC8("%s\t", str);
		if (uname) {
			FUNC8("%s\t%s\t", FUNC14(st.st_uid, 0),
			    FUNC4(st.st_gid, 0));
		} else {
			FUNC8("%d\t%d\t", st.st_uid, st.st_gid);
		}
		if (hsize) {
			FUNC5(sizebuf, sizeof(sizebuf),
			    kif->kf_un.kf_file.kf_file_size, "", HN_AUTOSCALE,
			    HN_NOSPACE);
			FUNC8("%s\t", sizebuf);
		} else {
			FUNC8("%jd\t",
			    (uintmax_t)kif->kf_un.kf_file.kf_file_size);
		}
		FUNC8("%s\n", kif->kf_path);
	}
out:
	FUNC1(buf);
	return (ret);
}