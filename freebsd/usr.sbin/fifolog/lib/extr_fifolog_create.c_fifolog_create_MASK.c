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
typedef  scalar_t__ u_int ;
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  DIOCGSECTORSIZE ; 
 int /*<<< orphan*/  FIFOLOG_FMT_MAGIC ; 
 int FIFOLOG_OFF_BS ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 char* FUNC5 (int,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int,struct stat*) ; 
 scalar_t__ FUNC9 (int,scalar_t__) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC12 (char const*,int,...) ; 
 int FUNC13 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 

const char *
FUNC15(const char *fn, off_t size, ssize_t recsize)
{
	int i, fd;
	ssize_t u;
	u_int uu;
	off_t ms;
	struct stat st;
	char *buf;
	int created;

	fd = FUNC12(fn, O_WRONLY | O_TRUNC | O_EXCL | O_CREAT, 0644);
	if (fd < 0) {
		created = 0;
		fd = FUNC12(fn, O_WRONLY);
		if (fd < 0)
			return ("Could not open");
	} else
		created = 1;

	/* Default sectorsize is 512 */
	if (recsize == 0)
		recsize = 512;

	/* See what we got... */
	i = FUNC8(fd, &st);
	FUNC3(i == 0);
	if (!FUNC0(st.st_mode) &&
	    !FUNC1(st.st_mode) &&
	    !FUNC2(st.st_mode)) {
		FUNC3(!FUNC6 (fd));
		return ("Wrong file type");
	}

	if(!created && FUNC2(st.st_mode)) {
		FUNC3(!FUNC6 (fd));
		return ("Wrong file type");
	}

	/* For raw disk with larger sectors: use 1 sector */
	i = FUNC10(fd, DIOCGSECTORSIZE, &uu);
	u = uu;
	if (i == 0 && (u > recsize || (recsize % u) != 0))
		recsize = u;

	/* If no configured size, or too large for disk, use device size */
	i = FUNC10(fd, DIOCGMEDIASIZE, &ms);
	if (i == 0 && (size == 0 || size > ms))
		size = ms;

	if (size == 0 && FUNC2(st.st_mode))
		size = st.st_size;

	if (size == 0)
		size = recsize * (off_t)(24*60*60);

	if (FUNC2(st.st_mode) && FUNC9(fd, size) < 0)
		return ("Could not ftrunc");

	buf = FUNC5(1, recsize);
	if (buf == NULL)
		return ("Could not malloc");

	FUNC14(buf, FIFOLOG_FMT_MAGIC);		/*lint !e64 */
	FUNC4(buf + FIFOLOG_OFF_BS, recsize);
	if (recsize != FUNC13(fd, buf, recsize, 0)) {
		i = errno;
		FUNC7(buf);
		errno = i;
		return ("Could not write first sector");
	}
	FUNC11(buf, 0, recsize);
	if ((int)recsize != FUNC13(fd, buf, recsize, recsize)) {
		i = errno;
		FUNC7(buf);
		errno = i;
		return ("Could not write second sector");
	}
	FUNC7(buf);
	FUNC3(0 == FUNC6(fd));
	return (NULL);
}