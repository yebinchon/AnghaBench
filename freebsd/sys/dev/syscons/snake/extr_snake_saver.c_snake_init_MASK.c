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
typedef  int /*<<< orphan*/  video_adapter_t ;

/* Variables and functions */
 int MSGBUF_LEN ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 void* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* message ; 
 void* messagep ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int
FUNC2(video_adapter_t *adp)
{
	message = FUNC0(MSGBUF_LEN, M_DEVBUF, M_WAITOK);
	messagep = FUNC0(MSGBUF_LEN * sizeof *messagep, M_DEVBUF, M_WAITOK);
	FUNC1();
	return 0;
}