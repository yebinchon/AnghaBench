#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct timespec {int dummy; } ;
struct runtime_env {int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {int tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_sec; } ;
struct query_state {int use_alternate_io; size_t kevent_watermark; size_t io_buffer_watermark; int io_buffer_filter; int (* process_func ) (struct query_state*) ;size_t io_buffer_size; int kevent_filter; int /*<<< orphan*/ * io_buffer_p; int /*<<< orphan*/ * io_buffer; int /*<<< orphan*/  read_func; int /*<<< orphan*/  write_func; TYPE_2__ timeout; TYPE_1__ creation_time; } ;
struct kevent {int flags; int /*<<< orphan*/  ident; scalar_t__ data; scalar_t__ udata; } ;
struct configuration {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
#define  EVFILT_READ 128 
 int EVFILT_TIMER ; 
 int EVFILT_WRITE ; 
 int EV_ADD ; 
 int EV_DELETE ; 
 int EV_EOF ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,struct query_state*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 int MAX_SOCKET_IO_SIZE ; 
 int /*<<< orphan*/  NOTE_LOWAT ; 
 int /*<<< orphan*/  FUNC2 (void (*) (struct kevent*,struct runtime_env*,struct configuration*)) ; 
 int /*<<< orphan*/  FUNC3 (void (*) (struct kevent*,struct runtime_env*,struct configuration*)) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct query_state*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC11 (struct timespec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  query_io_buffer_read ; 
 int /*<<< orphan*/  query_io_buffer_write ; 
 scalar_t__ FUNC12 (struct query_state*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC13 (struct query_state*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC14 (struct query_state*) ; 

__attribute__((used)) static void
FUNC15(struct kevent *event_data, struct runtime_env *env,
	struct configuration *config)
{
	struct kevent	eventlist[2];
	struct timeval	query_timeout;
	struct timespec	kevent_timeout;
	int	nevents;
	int	eof_res, res;
	ssize_t	io_res;
	struct query_state *qstate;

	FUNC2(process_socket_event);
	eof_res = event_data->flags & EV_EOF ? 1 : 0;
	res = 0;

	FUNC11(&kevent_timeout, 0, sizeof(struct timespec));
	FUNC0(&eventlist[0], event_data->ident, EVFILT_TIMER, EV_DELETE,
		0, 0, NULL);
	nevents = FUNC10(env->queue, eventlist, 1, NULL, 0, &kevent_timeout);
	if (nevents == -1) {
		if (errno == ENOENT) {
			/* the timer is already handling this event */
			FUNC3(process_socket_event);
			return;
		} else {
			/* some other error happened */
			FUNC1("process_socket_event", "kevent error, errno"
				" is %d", errno);
			FUNC3(process_socket_event);
			return;
		}
	}
	qstate = (struct query_state *)event_data->udata;

	/*
	 * If the buffer that is to be send/received is too large,
	 * we send it implicitly, by using query_io_buffer_read and
	 * query_io_buffer_write functions in the query_state. These functions
	 * use the temporary buffer, which is later send/received in parts.
	 * The code below implements buffer splitting/mergind for send/receive
	 * operations. It also does the actual socket IO operations.
	 */
	if (((qstate->use_alternate_io == 0) &&
		(qstate->kevent_watermark <= (size_t)event_data->data)) ||
		((qstate->use_alternate_io != 0) &&
		(qstate->io_buffer_watermark <= (size_t)event_data->data))) {
		if (qstate->use_alternate_io != 0) {
			switch (qstate->io_buffer_filter) {
			case EVFILT_READ:
				io_res = FUNC12(qstate,
					qstate->io_buffer_p,
					qstate->io_buffer_watermark);
				if (io_res < 0) {
					qstate->use_alternate_io = 0;
					qstate->process_func = NULL;
				} else {
					qstate->io_buffer_p += io_res;
					if (qstate->io_buffer_p ==
					    	qstate->io_buffer +
						qstate->io_buffer_size) {
						qstate->io_buffer_p =
						    qstate->io_buffer;
						qstate->use_alternate_io = 0;
					}
				}
			break;
			default:
			break;
			}
		}

		if (qstate->use_alternate_io == 0) {
			do {
				res = qstate->process_func(qstate);
			} while ((qstate->kevent_watermark == 0) &&
					(qstate->process_func != NULL) &&
					(res == 0));

			if (res != 0)
				qstate->process_func = NULL;
		}

		if ((qstate->use_alternate_io != 0) &&
			(qstate->io_buffer_filter == EVFILT_WRITE)) {
			io_res = FUNC13(qstate, qstate->io_buffer_p,
				qstate->io_buffer_watermark);
			if (io_res < 0) {
				qstate->use_alternate_io = 0;
				qstate->process_func = NULL;
			} else
				qstate->io_buffer_p += io_res;
		}
	} else {
		/* assuming that socket was closed */
		qstate->process_func = NULL;
		qstate->use_alternate_io = 0;
	}

	if (((qstate->process_func == NULL) &&
	    	(qstate->use_alternate_io == 0)) ||
		(eof_res != 0) || (res != 0)) {
		FUNC7(qstate);
		FUNC6(event_data->ident);
		FUNC3(process_socket_event);
		return;
	}

	/* updating the query_state lifetime variable */
	FUNC9(&query_timeout);
	query_timeout.tv_usec = 0;
	query_timeout.tv_sec -= qstate->creation_time.tv_sec;
	if (query_timeout.tv_sec > qstate->timeout.tv_sec)
		query_timeout.tv_sec = 0;
	else
		query_timeout.tv_sec = qstate->timeout.tv_sec -
			query_timeout.tv_sec;

	if ((qstate->use_alternate_io != 0) && (qstate->io_buffer_p ==
		qstate->io_buffer + qstate->io_buffer_size))
		qstate->use_alternate_io = 0;

	if (qstate->use_alternate_io == 0) {
		/*
		 * If we must send/receive the large block of data,
		 * we should prepare the query_state's io_XXX fields.
		 * We should also substitute its write_func and read_func
		 * with the query_io_buffer_write and query_io_buffer_read,
		 * which will allow us to implicitly send/receive this large
		 * buffer later (in the subsequent calls to the
		 * process_socket_event).
		 */
		if (qstate->kevent_watermark > MAX_SOCKET_IO_SIZE) {
#if 0
			/*
			 * XXX: Uncommenting this code makes nscd(8) fail for
			 *      entries larger than a few kB, causing few second
			 *      worth of delay for each call to retrieve them.
			 */
			if (qstate->io_buffer != NULL)
				free(qstate->io_buffer);

			qstate->io_buffer = calloc(1,
				qstate->kevent_watermark);
			assert(qstate->io_buffer != NULL);

			qstate->io_buffer_p = qstate->io_buffer;
			qstate->io_buffer_size = qstate->kevent_watermark;
			qstate->io_buffer_filter = qstate->kevent_filter;

			qstate->write_func = query_io_buffer_write;
			qstate->read_func = query_io_buffer_read;

			if (qstate->kevent_filter == EVFILT_READ)
				qstate->use_alternate_io = 1;
#endif

			qstate->io_buffer_watermark = MAX_SOCKET_IO_SIZE;
			FUNC0(&eventlist[1], event_data->ident,
				qstate->kevent_filter, EV_ADD | EV_ONESHOT,
				NOTE_LOWAT, MAX_SOCKET_IO_SIZE, qstate);
		} else {
			FUNC0(&eventlist[1], event_data->ident,
		    		qstate->kevent_filter, EV_ADD | EV_ONESHOT,
		    		NOTE_LOWAT, qstate->kevent_watermark, qstate);
		}
	} else {
		if (qstate->io_buffer + qstate->io_buffer_size -
		    	qstate->io_buffer_p <
			MAX_SOCKET_IO_SIZE) {
			qstate->io_buffer_watermark = qstate->io_buffer +
				qstate->io_buffer_size - qstate->io_buffer_p;
			FUNC0(&eventlist[1], event_data->ident,
			    	qstate->io_buffer_filter,
				EV_ADD | EV_ONESHOT, NOTE_LOWAT,
				qstate->io_buffer_watermark,
				qstate);
		} else {
			qstate->io_buffer_watermark = MAX_SOCKET_IO_SIZE;
			FUNC0(&eventlist[1], event_data->ident,
		    		qstate->io_buffer_filter, EV_ADD | EV_ONESHOT,
		    		NOTE_LOWAT, MAX_SOCKET_IO_SIZE, qstate);
		}
	}
	FUNC0(&eventlist[0], event_data->ident, EVFILT_TIMER,
		EV_ADD | EV_ONESHOT, 0, query_timeout.tv_sec * 1000, qstate);
	FUNC10(env->queue, eventlist, 2, NULL, 0, &kevent_timeout);

	FUNC3(process_socket_event);
}