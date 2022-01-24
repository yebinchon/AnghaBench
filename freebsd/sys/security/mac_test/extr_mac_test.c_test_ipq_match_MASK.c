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
struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ipq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_IPQ ; 
 int /*<<< orphan*/  MAGIC_MBUF ; 
 int /*<<< orphan*/  ipq_match ; 

__attribute__((used)) static int
FUNC2(struct mbuf *fragment, struct label *fragmentlabel,
    struct ipq *q, struct label *qlabel)
{

	FUNC1(fragmentlabel, MAGIC_MBUF);
	FUNC1(qlabel, MAGIC_IPQ);
	FUNC0(ipq_match);

	return (1);
}