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
 void* MAP_FAILED ; 
 int MAP_FIXED ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 void* FUNC0 (char*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int pagesize ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(char** bufferp,int fd1,int fd2)
{
  void* addr;
  char *buffer;

  addr = FUNC0(NULL,pagesize*2, PROT_READ | PROT_WRITE , MAP_SHARED, fd1, 0);
  if (addr == MAP_FAILED)
    {
      FUNC1("Mmap failed");
      return 1;
    }
 
  buffer = addr;
  addr = FUNC0(buffer + pagesize,pagesize, PROT_READ | PROT_WRITE , MAP_FIXED | 
MAP_SHARED, fd2, 0);
 
  if (addr == MAP_FAILED)
    {
      FUNC1("Mmap2 failed");
      return 1;
    }
  *bufferp = buffer;
  return 0;
}