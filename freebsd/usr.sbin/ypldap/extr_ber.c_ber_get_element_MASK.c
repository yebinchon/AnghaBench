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
struct ber_element {unsigned long be_encoding; } ;

/* Variables and functions */
 int /*<<< orphan*/  BER_CLASS_UNIVERSAL ; 
 int /*<<< orphan*/  BER_TYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct ber_element*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ber_element* FUNC1 (int,int) ; 

struct ber_element *
FUNC2(unsigned long encoding)
{
	struct ber_element *elm;

	if ((elm = FUNC1(1, sizeof(*elm))) == NULL)
		return NULL;

	elm->be_encoding = encoding;
	FUNC0(elm, BER_CLASS_UNIVERSAL, BER_TYPE_DEFAULT);

	return elm;
}