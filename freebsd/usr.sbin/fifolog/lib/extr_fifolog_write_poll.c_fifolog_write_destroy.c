
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifolog_writer {int ibuf; int obuf; } ;


 int FREE_OBJ (struct fifolog_writer*) ;
 int free (int ) ;

void
fifolog_write_destroy(struct fifolog_writer *f)
{

 free(f->obuf);
 free(f->ibuf);
 FREE_OBJ(f);
}
