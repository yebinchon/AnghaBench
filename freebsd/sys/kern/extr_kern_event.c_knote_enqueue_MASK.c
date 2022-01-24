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
struct kqueue {int /*<<< orphan*/  kq_count; int /*<<< orphan*/  kq_head; } ;
struct knote {int kn_status; struct kqueue* kn_kq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KN_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kn_tqe ; 
 int /*<<< orphan*/  FUNC3 (struct kqueue*) ; 

__attribute__((used)) static void
FUNC4(struct knote *kn)
{
	struct kqueue *kq = kn->kn_kq;

	FUNC1(kn->kn_kq);
	FUNC0((kn->kn_status & KN_QUEUED) == 0, ("knote already queued"));

	FUNC2(&kq->kq_head, kn, kn_tqe);
	kn->kn_status |= KN_QUEUED;
	kq->kq_count++;
	FUNC3(kq);
}