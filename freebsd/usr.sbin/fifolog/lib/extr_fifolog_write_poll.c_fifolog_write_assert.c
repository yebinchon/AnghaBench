
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fifolog_writer {scalar_t__ obuf; scalar_t__ obufsize; TYPE_2__* ff; } ;
struct TYPE_4__ {TYPE_1__* zs; } ;
struct TYPE_3__ {scalar_t__ next_out; scalar_t__ avail_out; } ;


 int CHECK_OBJ_NOTNULL (struct fifolog_writer const*,int ) ;
 int FIFOLOG_WRITER_MAGIC ;
 int assert (int) ;

__attribute__((used)) static void
fifolog_write_assert(const struct fifolog_writer *f)
{

 CHECK_OBJ_NOTNULL(f, FIFOLOG_WRITER_MAGIC);
 assert(f->ff->zs->next_out + f->ff->zs->avail_out == f->obuf + f->obufsize);

}
