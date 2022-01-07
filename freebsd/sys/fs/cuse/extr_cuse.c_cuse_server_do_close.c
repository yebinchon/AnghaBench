
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct cuse_server {int refs; TYPE_1__ selinfo; } ;


 int cuse_lock () ;
 int cuse_server_is_closing (struct cuse_server*) ;
 int cuse_server_wakeup_all_client_locked (struct cuse_server*) ;
 int cuse_unlock () ;
 int knlist_clear (int *,int) ;

__attribute__((used)) static int
cuse_server_do_close(struct cuse_server *pcs)
{
 int retval;

 cuse_lock();
 cuse_server_is_closing(pcs);

 cuse_server_wakeup_all_client_locked(pcs);

 knlist_clear(&pcs->selinfo.si_note, 1);

 retval = pcs->refs;
 cuse_unlock();

 return (retval);
}
