
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct timespec {int dummy; } ;
struct runtime_env {int queue; } ;
struct TYPE_4__ {int tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_sec; } ;
struct query_state {int use_alternate_io; size_t kevent_watermark; size_t io_buffer_watermark; int io_buffer_filter; int (* process_func ) (struct query_state*) ;size_t io_buffer_size; int kevent_filter; int * io_buffer_p; int * io_buffer; int read_func; int write_func; TYPE_2__ timeout; TYPE_1__ creation_time; } ;
struct kevent {int flags; int ident; scalar_t__ data; scalar_t__ udata; } ;
struct configuration {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ ENOENT ;

 int EVFILT_TIMER ;
 int EVFILT_WRITE ;
 int EV_ADD ;
 int EV_DELETE ;
 int EV_EOF ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int ,int,int,int ,int,struct query_state*) ;
 int LOG_ERR_2 (char*,char*,scalar_t__) ;
 int MAX_SOCKET_IO_SIZE ;
 int NOTE_LOWAT ;
 int TRACE_IN (void (*) (struct kevent*,struct runtime_env*,struct configuration*)) ;
 int TRACE_OUT (void (*) (struct kevent*,struct runtime_env*,struct configuration*)) ;
 int assert (int ) ;
 int * calloc (int,int) ;
 int close (int ) ;
 int destroy_query_state (struct query_state*) ;
 scalar_t__ errno ;
 int free (int *) ;
 int get_time_func (struct timeval*) ;
 int kevent (int ,struct kevent*,int,int *,int ,struct timespec*) ;
 int memset (struct timespec*,int ,int) ;
 int query_io_buffer_read ;
 int query_io_buffer_write ;
 scalar_t__ query_socket_read (struct query_state*,int *,size_t) ;
 scalar_t__ query_socket_write (struct query_state*,int *,size_t) ;
 int stub1 (struct query_state*) ;

__attribute__((used)) static void
process_socket_event(struct kevent *event_data, struct runtime_env *env,
 struct configuration *config)
{
 struct kevent eventlist[2];
 struct timeval query_timeout;
 struct timespec kevent_timeout;
 int nevents;
 int eof_res, res;
 ssize_t io_res;
 struct query_state *qstate;

 TRACE_IN(process_socket_event);
 eof_res = event_data->flags & EV_EOF ? 1 : 0;
 res = 0;

 memset(&kevent_timeout, 0, sizeof(struct timespec));
 EV_SET(&eventlist[0], event_data->ident, EVFILT_TIMER, EV_DELETE,
  0, 0, ((void*)0));
 nevents = kevent(env->queue, eventlist, 1, ((void*)0), 0, &kevent_timeout);
 if (nevents == -1) {
  if (errno == ENOENT) {

   TRACE_OUT(process_socket_event);
   return;
  } else {

   LOG_ERR_2("process_socket_event", "kevent error, errno"
    " is %d", errno);
   TRACE_OUT(process_socket_event);
   return;
  }
 }
 qstate = (struct query_state *)event_data->udata;
 if (((qstate->use_alternate_io == 0) &&
  (qstate->kevent_watermark <= (size_t)event_data->data)) ||
  ((qstate->use_alternate_io != 0) &&
  (qstate->io_buffer_watermark <= (size_t)event_data->data))) {
  if (qstate->use_alternate_io != 0) {
   switch (qstate->io_buffer_filter) {
   case 128:
    io_res = query_socket_read(qstate,
     qstate->io_buffer_p,
     qstate->io_buffer_watermark);
    if (io_res < 0) {
     qstate->use_alternate_io = 0;
     qstate->process_func = ((void*)0);
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
     (qstate->process_func != ((void*)0)) &&
     (res == 0));

   if (res != 0)
    qstate->process_func = ((void*)0);
  }

  if ((qstate->use_alternate_io != 0) &&
   (qstate->io_buffer_filter == EVFILT_WRITE)) {
   io_res = query_socket_write(qstate, qstate->io_buffer_p,
    qstate->io_buffer_watermark);
   if (io_res < 0) {
    qstate->use_alternate_io = 0;
    qstate->process_func = ((void*)0);
   } else
    qstate->io_buffer_p += io_res;
  }
 } else {

  qstate->process_func = ((void*)0);
  qstate->use_alternate_io = 0;
 }

 if (((qstate->process_func == ((void*)0)) &&
      (qstate->use_alternate_io == 0)) ||
  (eof_res != 0) || (res != 0)) {
  destroy_query_state(qstate);
  close(event_data->ident);
  TRACE_OUT(process_socket_event);
  return;
 }


 get_time_func(&query_timeout);
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
  if (qstate->kevent_watermark > MAX_SOCKET_IO_SIZE) {
   qstate->io_buffer_watermark = MAX_SOCKET_IO_SIZE;
   EV_SET(&eventlist[1], event_data->ident,
    qstate->kevent_filter, EV_ADD | EV_ONESHOT,
    NOTE_LOWAT, MAX_SOCKET_IO_SIZE, qstate);
  } else {
   EV_SET(&eventlist[1], event_data->ident,
        qstate->kevent_filter, EV_ADD | EV_ONESHOT,
        NOTE_LOWAT, qstate->kevent_watermark, qstate);
  }
 } else {
  if (qstate->io_buffer + qstate->io_buffer_size -
       qstate->io_buffer_p <
   MAX_SOCKET_IO_SIZE) {
   qstate->io_buffer_watermark = qstate->io_buffer +
    qstate->io_buffer_size - qstate->io_buffer_p;
   EV_SET(&eventlist[1], event_data->ident,
        qstate->io_buffer_filter,
    EV_ADD | EV_ONESHOT, NOTE_LOWAT,
    qstate->io_buffer_watermark,
    qstate);
  } else {
   qstate->io_buffer_watermark = MAX_SOCKET_IO_SIZE;
   EV_SET(&eventlist[1], event_data->ident,
        qstate->io_buffer_filter, EV_ADD | EV_ONESHOT,
        NOTE_LOWAT, MAX_SOCKET_IO_SIZE, qstate);
  }
 }
 EV_SET(&eventlist[0], event_data->ident, EVFILT_TIMER,
  EV_ADD | EV_ONESHOT, 0, query_timeout.tv_sec * 1000, qstate);
 kevent(env->queue, eventlist, 2, ((void*)0), 0, &kevent_timeout);

 TRACE_OUT(process_socket_event);
}
