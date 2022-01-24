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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int MBRSIZE ; 
 int OFF_MAGIC ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC11(const char *disk, u_int8_t **mbr, int check_version)
{
    u_int8_t buf[MBRSIZE];
    int mbr_size, fd;
    int ver;
    ssize_t n;

    if ((fd = FUNC9(disk, O_RDONLY)) == -1)
        FUNC4(1, "open %s", disk);
    if ((n = FUNC10(fd, buf, MBRSIZE)) == -1)
        FUNC4(1, "read %s", disk);
    if (n != MBRSIZE)
        FUNC5(1, "%s: short read", disk);
    if (FUNC3(buf + OFF_MAGIC) != 0xaa55)
        FUNC5(1, "%s: bad magic", disk);

    if (! (ver = FUNC0(buf))) {
	if (check_version)
	    FUNC5(1, "%s: unknown or incompatible boot code", disk);
    } else if (FUNC1(buf) == 0x101) {
	mbr_size = 1024;
	if ((*mbr = FUNC7(mbr_size)) == NULL)
	    FUNC5(1, "%s: unable to allocate read buffer", disk);
	if (FUNC6(fd, 0, SEEK_SET) == -1 ||
	    (n = FUNC10(fd, *mbr, mbr_size)) == -1)
	    FUNC4(1, "%s", disk);
	if (n != mbr_size)
	    FUNC5(1, "%s: short read", disk);
	FUNC2(fd);
	return (mbr_size);
    }
    if ((*mbr = FUNC7(sizeof(buf))) == NULL)
	FUNC5(1, "%s: unable to allocate MBR buffer", disk);
    FUNC8(*mbr, buf, sizeof(buf));
    FUNC2(fd);

    return sizeof(buf);
}