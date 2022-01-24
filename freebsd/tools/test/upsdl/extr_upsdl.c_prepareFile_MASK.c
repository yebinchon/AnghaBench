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

/* Variables and functions */
 int /*<<< orphan*/  FILESIZE ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int MS_INVALIDATE ; 
 int MS_SYNC ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  S_IRWXU ; 
 int FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  wbuffer ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(char* filename,int* fdp)
{
  int fd;
  int len;
  int status;
  void *addr;

  fd = FUNC4(filename,O_CREAT | O_TRUNC | O_RDWR,S_IRWXU);
  if (fd == -1)
    {
      FUNC5("Creating file");
      return fd;
    }
  
  len = FUNC6(fd,wbuffer,FILESIZE);
  if (len < 0)
    {
      FUNC5("Write failed");
      return 1;
    }

  status = FUNC0(fd);
   if (status != 0)
    {
        FUNC5("fsync failed");
	return 1;
    }

  addr = FUNC1(NULL,FILESIZE, PROT_READ | PROT_WRITE , MAP_SHARED, fd, 0);
  if (addr == MAP_FAILED)
    {
      FUNC5("Mmap failed");
      return 1;
    }

  status = FUNC2(addr,FILESIZE,MS_INVALIDATE | MS_SYNC);
  if (status != 0)
    {
        FUNC5("Msync failed");
	return 1;
    }

  FUNC3(addr,FILESIZE);

  *fdp = fd;
  return 0;
}