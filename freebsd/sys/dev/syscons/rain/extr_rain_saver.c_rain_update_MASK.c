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
typedef  int /*<<< orphan*/  video_adapter_t ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int MAX ; 
 int* rain_pal ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void
FUNC2(video_adapter_t *adp)
{
	int i, t;

	t = rain_pal[FUNC0(MAX)];
	for (i = MAX; i > 1; i--)
		rain_pal[FUNC0(i)] = rain_pal[FUNC0(i - 1)];
	rain_pal[FUNC0(1)] = t;
	FUNC1(adp, rain_pal);
}