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
typedef  union if_snd_tag_modify_params {int dummy; } if_snd_tag_modify_params ;
struct m_snd_tag {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 

__attribute__((used)) static int
FUNC0(struct m_snd_tag *pmt, union if_snd_tag_modify_params *params)
{
	return (EOPNOTSUPP);
}