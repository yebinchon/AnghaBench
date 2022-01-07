
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_exeq_elem {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_MSG (struct bxe_softc*,char*) ;
 struct ecore_exeq_elem* ECORE_ZALLOC (int,int ,struct bxe_softc*) ;
 int GFP_ATOMIC ;

__attribute__((used)) static inline struct ecore_exeq_elem *ecore_exe_queue_alloc_elem(
 struct bxe_softc *sc)
{
 ECORE_MSG(sc, "Allocating a new exe_queue element\n");
 return ECORE_ZALLOC(sizeof(struct ecore_exeq_elem), GFP_ATOMIC,
       sc);
}
