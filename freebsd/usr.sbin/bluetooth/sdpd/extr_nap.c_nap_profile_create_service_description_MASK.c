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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int32_t
FUNC2(
		uint8_t *buf, uint8_t const * const eob,
		uint8_t const *data, uint32_t datalen)
{
	static char	service_descr[] = "Personal Ad-hoc Network Service";

	return (FUNC0(
			buf, eob,
			(uint8_t const *) service_descr,
			FUNC1(service_descr)));
}