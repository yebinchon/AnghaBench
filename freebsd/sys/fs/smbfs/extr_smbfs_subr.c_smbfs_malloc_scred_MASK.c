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
struct smb_cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SMBFSCRED ; 
 int /*<<< orphan*/  M_WAITOK ; 
 void* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *
FUNC1(void)
{
	return (FUNC0(sizeof(struct smb_cred), M_SMBFSCRED, M_WAITOK));
}