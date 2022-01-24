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
typedef  char* caddr_t ;

/* Variables and functions */
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int,char*,int) ; 

int FUNC8(int argc, char** argv)
{
    int fd, fd2;
    caddr_t addr;
    char zeros[4096];
    char ones[200];

    FUNC3(zeros, 0, sizeof zeros);
    FUNC3(ones, 1, sizeof ones);
#if 0
    unlink("test2.data");
    fd = open("test2.data", O_RDWR|O_CREAT, 0666);
    if (fd < 0)
	err(1, "creating file");
    if (write(fd, zeros, sizeof zeros) < 0)
	err(1, "writing zeros");
    close(fd);
#endif

    fd = FUNC5("test2.data", O_RDWR);
    if (fd < 0)
	FUNC1(1, "opening file");
    if (FUNC2(fd, 600, SEEK_SET) < 0)
	FUNC1(1, "seeking");
	
    if (FUNC7(fd, ones, sizeof ones) < 0)
	FUNC1(1, "writing ones");

    addr = FUNC4(0, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE, fd, 0);
    if (addr == MAP_FAILED)
	FUNC1(1, "mapping");
    FUNC6("test2.scratch");
    fd2 = FUNC5("test2.scratch", O_RDWR|O_CREAT, 0666);
    if (fd2 < 0)
	FUNC1(1, "creating scratch");
    
    if (FUNC7(fd2, addr, 4096) < 0)
	FUNC1(1, "writing scratch");
}