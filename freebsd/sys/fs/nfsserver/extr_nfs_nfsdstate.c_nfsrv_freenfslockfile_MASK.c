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
struct nfslockfile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfslockfile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NFSDLOCKFILE ; 
 int /*<<< orphan*/  FUNC1 (struct nfslockfile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lf_hash ; 

__attribute__((used)) static void
FUNC2(struct nfslockfile *lfp)
{

	FUNC0(lfp, lf_hash);
	FUNC1(lfp, M_NFSDLOCKFILE);
}