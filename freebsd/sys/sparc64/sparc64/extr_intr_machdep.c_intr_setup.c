
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int register_t ;
typedef int iv_func_t ;
typedef int ih_func_t ;
struct TYPE_2__ {int iv_pri; int iv_vec; void* iv_arg; int * iv_func; } ;


 int MAXCOMLEN ;
 int intr_disable () ;
 int ** intr_handlers ;
 int intr_restore (int ) ;
 TYPE_1__* intr_vectors ;
 int intrcnt_updatename (int,char*,int) ;
 char** pil_names ;
 int snprintf (char*,int,char*,int,char*) ;

void
intr_setup(int pri, ih_func_t *ihf, int vec, iv_func_t *ivf, void *iva)
{
 char pilname[MAXCOMLEN + 1];
 register_t s;

 s = intr_disable();
 if (vec != -1) {
  intr_vectors[vec].iv_func = ivf;
  intr_vectors[vec].iv_arg = iva;
  intr_vectors[vec].iv_pri = pri;
  intr_vectors[vec].iv_vec = vec;
 }
 intr_handlers[pri] = ihf;
 intr_restore(s);
 snprintf(pilname, MAXCOMLEN + 1, "pil%d: %s", pri, pil_names[pri]);
 intrcnt_updatename(pri, pilname, 1);
}
