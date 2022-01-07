
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int dummy; } ;
struct otus_data {int dummy; } ;


 int OTUS_LOCK_ASSERT (struct otus_softc*) ;
 struct otus_data* _otus_getbuf (struct otus_softc*) ;

__attribute__((used)) static struct otus_data *
otus_getbuf(struct otus_softc *sc)
{
 struct otus_data *bf;

 OTUS_LOCK_ASSERT(sc);

 bf = _otus_getbuf(sc);
 return (bf);
}
