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
typedef  int /*<<< orphan*/  u_int32_t ;
struct snd_mixer {int dummy; } ;
struct mss_info {int dummy; } ;

/* Variables and functions */
 struct mss_info* FUNC0 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC1 (struct mss_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mss_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mss_info*) ; 

__attribute__((used)) static u_int32_t
FUNC4(struct snd_mixer *m, u_int32_t src)
{
	struct mss_info *mss = FUNC0(m);
	FUNC1(mss);
	src = FUNC2(mss, src);
	FUNC3(mss);
	return src;
}