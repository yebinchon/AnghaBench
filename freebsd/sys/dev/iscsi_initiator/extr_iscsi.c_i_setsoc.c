
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_6__ {struct thread* td; TYPE_5__* fp; int * soc; } ;
typedef TYPE_1__ isc_session_t ;
typedef int cap_rights_t ;
struct TYPE_7__ {int * f_data; } ;


 int CAP_SOCK_CLIENT ;
 int cap_rights_init (int *,int ) ;
 int getsock_cap (struct thread*,int,int ,TYPE_5__**,int *,int *) ;
 int isc_start_receiver (TYPE_1__*) ;
 int isc_stop_receiver (TYPE_1__*) ;

__attribute__((used)) static int
i_setsoc(isc_session_t *sp, int fd, struct thread *td)
{
     cap_rights_t rights;
     int error = 0;

     if(sp->soc != ((void*)0))
   isc_stop_receiver(sp);

     error = getsock_cap(td, fd, cap_rights_init(&rights, CAP_SOCK_CLIENT),
      &sp->fp, ((void*)0), ((void*)0));
     if(error)
   return error;

     sp->soc = sp->fp->f_data;
     sp->td = td;
     isc_start_receiver(sp);

     return error;
}
