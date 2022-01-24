#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  kf_pts_dev; int /*<<< orphan*/  kf_pts_dev_freebsd11; } ;
struct TYPE_4__ {TYPE_1__ kf_pts; } ;
struct kinfo_file {int /*<<< orphan*/  kf_path; TYPE_2__ kf_un; int /*<<< orphan*/  kf_type; } ;
struct filedesc {int dummy; } ;
struct file {struct tty* f_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  KF_TYPE_PTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 

__attribute__((used)) static int
FUNC3(struct file *fp, struct kinfo_file *kif, struct filedesc *fdp)
{
	struct tty *tp;

	kif->kf_type = KF_TYPE_PTS;
	tp = fp->f_data;
	kif->kf_un.kf_pts.kf_pts_dev = FUNC2(tp);
	kif->kf_un.kf_pts.kf_pts_dev_freebsd11 =
	    kif->kf_un.kf_pts.kf_pts_dev; /* truncate */
	FUNC0(kif->kf_path, FUNC1(tp), sizeof(kif->kf_path));
	return (0);
}