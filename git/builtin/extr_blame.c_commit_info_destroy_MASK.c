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
struct commit_info {int /*<<< orphan*/  summary; int /*<<< orphan*/  committer_tz; int /*<<< orphan*/  committer_mail; int /*<<< orphan*/  committer; int /*<<< orphan*/  author_tz; int /*<<< orphan*/  author_mail; int /*<<< orphan*/  author; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct commit_info *ci)
{

	FUNC0(&ci->author);
	FUNC0(&ci->author_mail);
	FUNC0(&ci->author_tz);
	FUNC0(&ci->committer);
	FUNC0(&ci->committer_mail);
	FUNC0(&ci->committer_tz);
	FUNC0(&ci->summary);
}