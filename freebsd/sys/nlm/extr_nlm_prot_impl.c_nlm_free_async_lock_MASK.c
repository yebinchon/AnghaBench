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
typedef  int /*<<< orphan*/  xdrproc_t ;
struct nlm_async_lock {scalar_t__ af_vp; int /*<<< orphan*/  af_granted; scalar_t__ af_rpc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  M_NLM ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_async_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ xdr_nlm4_testargs ; 

__attribute__((used)) static void
FUNC4(struct nlm_async_lock *af)
{
	/*
	 * Free an async lock.
	 */
	if (af->af_rpc)
		FUNC0(af->af_rpc);
	FUNC3((xdrproc_t) xdr_nlm4_testargs, &af->af_granted);
	if (af->af_vp)
		FUNC2(af->af_vp);
	FUNC1(af, M_NLM);
}