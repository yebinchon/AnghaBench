
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_3__ {scalar_t__ tv_usec; int tv_sec; } ;
struct query_state {int sockfd; size_t kevent_watermark; int uid; int gid; TYPE_1__ timeout; int creation_time; int read_func; int write_func; int destroy_func; int process_func; int response; int request; int eid_str; int eid_str_length; int egid; int euid; int kevent_filter; } ;
typedef int gid_t ;
struct TYPE_4__ {int query_timeout; } ;


 int CET_UNDEFINED ;
 int EVFILT_READ ;
 int TRACE_IN (struct query_state* (*) (int,size_t,int ,int )) ;
 int TRACE_OUT (struct query_state* (*) (int,size_t,int ,int )) ;
 int asprintf (int *,char*,int ,int ) ;
 int assert (int ) ;
 struct query_state* calloc (int,int) ;
 int free (struct query_state*) ;
 int get_time_func (int *) ;
 int init_comm_element (int *,int ) ;
 int on_query_destroy ;
 int on_query_startup ;
 int query_socket_read ;
 int query_socket_write ;
 TYPE_2__* s_configuration ;
 int strlen (int ) ;

struct query_state *
init_query_state(int sockfd, size_t kevent_watermark, uid_t euid, gid_t egid)
{
 struct query_state *retval;

 TRACE_IN(init_query_state);
 retval = calloc(1, sizeof(*retval));
 assert(retval != ((void*)0));

 retval->sockfd = sockfd;
 retval->kevent_filter = EVFILT_READ;
 retval->kevent_watermark = kevent_watermark;

 retval->euid = euid;
 retval->egid = egid;
 retval->uid = retval->gid = -1;

 if (asprintf(&retval->eid_str, "%d_%d_", retval->euid,
  retval->egid) == -1) {
  free(retval);
  return (((void*)0));
 }
 retval->eid_str_length = strlen(retval->eid_str);

 init_comm_element(&retval->request, CET_UNDEFINED);
 init_comm_element(&retval->response, CET_UNDEFINED);
 retval->process_func = on_query_startup;
 retval->destroy_func = on_query_destroy;

 retval->write_func = query_socket_write;
 retval->read_func = query_socket_read;

 get_time_func(&retval->creation_time);
 retval->timeout.tv_sec = s_configuration->query_timeout;
 retval->timeout.tv_usec = 0;

 TRACE_OUT(init_query_state);
 return (retval);
}
