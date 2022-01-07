
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_request {int tr_sc; int * tr_private; } ;


 int TWE_IO_ASSERT_LOCKED (int ) ;
 int debug_called (int) ;
 int dumping ;
 int twe_enqueue_free (struct twe_request*) ;
 int twe_panic (int ,char*) ;

__attribute__((used)) static void
twe_release_request(struct twe_request *tr)
{
    debug_called(4);

    if (!dumping)
 TWE_IO_ASSERT_LOCKED(tr->tr_sc);
    if (tr->tr_private != ((void*)0))
 twe_panic(tr->tr_sc, "tr_private != NULL");
    twe_enqueue_free(tr);
}
