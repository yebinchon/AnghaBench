
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_ticket {int tk_aw_mtx; int tk_aw_fiov; int tk_ms_fiov; } ;


 int fiov_teardown (int *) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
fticket_fini(void *mem, int size)
{
 struct fuse_ticket *ftick = mem;

 fiov_teardown(&ftick->tk_ms_fiov);
 fiov_teardown(&ftick->tk_aw_fiov);
 mtx_destroy(&ftick->tk_aw_mtx);
}
