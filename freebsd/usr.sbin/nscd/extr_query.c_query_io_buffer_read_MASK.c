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
struct query_state {scalar_t__ io_buffer_size; int /*<<< orphan*/  read_func; int /*<<< orphan*/  write_func; int /*<<< orphan*/ * io_buffer; int /*<<< orphan*/ * io_buffer_p; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (struct query_state*,void*,size_t)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*,void*,size_t)) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  query_socket_read ; 
 int /*<<< orphan*/  query_socket_write ; 

ssize_t
FUNC5(struct query_state *qstate, void *buf, size_t nbytes)
{
	size_t remaining;
	ssize_t	result;

	FUNC0(query_io_buffer_read);
	if ((qstate->io_buffer_size == 0) || (qstate->io_buffer == NULL))
		return (-1);

	FUNC2(qstate->io_buffer_p <=
		qstate->io_buffer + qstate->io_buffer_size);
	remaining = qstate->io_buffer + qstate->io_buffer_size -
		qstate->io_buffer_p;
	if (nbytes < remaining)
		result = nbytes;
	else
		result = remaining;

	FUNC4(buf, qstate->io_buffer_p, result);
	qstate->io_buffer_p += result;

	if (remaining == 0) {
		FUNC3(qstate->io_buffer);
		qstate->io_buffer = NULL;

		qstate->write_func = query_socket_write;
		qstate->read_func = query_socket_read;
	}

	FUNC1(query_io_buffer_read);
	return (result);
}