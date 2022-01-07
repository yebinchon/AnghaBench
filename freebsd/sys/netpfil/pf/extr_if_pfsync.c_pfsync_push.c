
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_bucket {int b_flags; } ;


 int PFSYNCF_BUCKET_PUSH ;
 int PFSYNC_BUCKET_LOCK_ASSERT (struct pfsync_bucket*) ;
 int V_pfsync_swi_cookie ;
 int swi_sched (int ,int ) ;

__attribute__((used)) static void
pfsync_push(struct pfsync_bucket *b)
{

 PFSYNC_BUCKET_LOCK_ASSERT(b);

 b->b_flags |= PFSYNCF_BUCKET_PUSH;
 swi_sched(V_pfsync_swi_cookie, 0);
}
