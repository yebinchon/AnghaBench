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
struct mbuf {scalar_t__ m_len; int /*<<< orphan*/ * m_data; } ;

/* Variables and functions */

__attribute__((used)) static inline void *
FUNC0(struct mbuf *mb, int len)
{
	uint8_t *data;

	data = mb->m_data;
	data += mb->m_len;
	mb->m_len += len;
	return (void *)data;
}