
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csock_buf {int path; int mesg; } ;


 struct csock_buf* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int csock_bufs ;
 int csock_handle (int ,int ) ;
 int free (struct csock_buf*) ;
 int link ;

__attribute__((used)) static void
ng_idle(void)
{
 struct csock_buf *b;


 while ((b = STAILQ_FIRST(&csock_bufs)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&csock_bufs, link);
  csock_handle(b->mesg, b->path);
  free(b);
 }
}
