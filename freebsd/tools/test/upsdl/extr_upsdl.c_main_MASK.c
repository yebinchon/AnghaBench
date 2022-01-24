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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char**,int,int) ; 
 int /*<<< orphan*/  pagesize ; 
 scalar_t__ FUNC4 (char*,int*) ; 
 int FUNC5 (int,char*) ; 

int FUNC6(int argc,char *argv[],char *envp[])
{

  int fdA,fdB,fdDelayA,fdDelayB;
  int status;
  char *bufferA,*bufferB;
  pid_t pid;

  pagesize = FUNC2();

  if ((FUNC4("A",&fdA))
      || (FUNC4("B",&fdB))
      || (FUNC4("DelayA",&fdDelayA))
      || (FUNC4("DelayB",&fdDelayB))
      || (FUNC3(&bufferA,fdDelayA,fdB))
      || (FUNC3(&bufferB,fdDelayB,fdA)))
    FUNC0(1);
  
  pid = FUNC1();

  if (pid == 0)
    {
      status = FUNC5(fdA,bufferA);
      FUNC0(status);
    }

  if (pid == -1)
    {
      FUNC0(1);
    }
  status = FUNC5(fdB,bufferB);
  FUNC0(status);

}