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
struct snd_mixer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD1816_MIXER_DEVICES ; 
 int /*<<< orphan*/  AD1816_REC_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (struct snd_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct snd_mixer *m)
{
	FUNC0(m, AD1816_MIXER_DEVICES);
	FUNC1(m, AD1816_REC_DEVICES);
	return 0;
}