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
struct ipqbucket {int dummy; } ;
struct ipq {int /*<<< orphan*/  ipq_nfrags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipqbucket*,struct ipq*) ; 
 int /*<<< orphan*/  ips_fragdropped ; 

__attribute__((used)) static inline void
FUNC2(struct ipqbucket *bucket, struct ipq *fp)
{

	FUNC0(ips_fragdropped, fp->ipq_nfrags);
	FUNC1(bucket, fp);
}