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
typedef  int uint8_t ;
struct fail_point_setting {int dummy; } ;

/* Variables and functions */
 int FP_MAX_ENTRY_COUNT ; 
 char* FUNC0 (struct fail_point_setting*,char*) ; 

__attribute__((used)) static char *
FUNC1(struct fail_point_setting *ents, char *p)
{
	/*  <fail_point> ::
	 *      <term> ( "->" <term> )*
	 */
	uint8_t term_count;

	term_count = 1;

	p = FUNC0(ents, p);
	if (p == NULL)
		return (NULL);

	while (*p != '\0') {
		term_count++;
		if (p[0] != '-' || p[1] != '>' ||
		        (p = FUNC0(ents, p+2)) == NULL ||
		        term_count > FP_MAX_ENTRY_COUNT)
			return (NULL);
	}
	return (p);
}