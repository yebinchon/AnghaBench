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
typedef  unsigned int uint16_t ;
typedef  enum sfxge_sw_ev { ____Placeholder_sfxge_sw_ev } sfxge_sw_ev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned int SFXGE_MAGIC_DMAQ_LABEL_MASK ; 
 unsigned int FUNC1 (int) ; 

__attribute__((used)) static inline uint16_t
FUNC2(enum sfxge_sw_ev sw_ev, unsigned int label)
{
	FUNC0((label & SFXGE_MAGIC_DMAQ_LABEL_MASK) == label,
	    ("(label & SFXGE_MAGIC_DMAQ_LABEL_MASK) != label"));
	return FUNC1(sw_ev) | label;
}