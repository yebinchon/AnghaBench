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
struct sc_info {int dummy; } ;

/* Variables and functions */
 struct sc_info* FUNC0 (struct snd_mixer*) ; 
 int FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct snd_mixer *m, u_int32_t dev, u_int32_t left, u_int32_t right)
{
	struct sc_info	*sc = FUNC0(m);
	return FUNC1(sc, dev, left, right);
}