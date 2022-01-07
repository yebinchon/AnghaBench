
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ismt_softc {scalar_t__ bus_reserved; scalar_t__ head; struct ismt_desc* desc; } ;
struct ismt_desc {int dummy; } ;


 scalar_t__ ISMT_DESC_ENTRIES ;
 int KASSERT (int,char*) ;
 scalar_t__ curthread ;
 int memset (struct ismt_desc*,int ,int) ;

__attribute__((used)) static struct ismt_desc *
ismt_alloc_desc(struct ismt_softc *sc)
{
 struct ismt_desc *desc;

 KASSERT(sc->bus_reserved == curthread,
     ("curthread %p did not request bus (%p has reserved)\n",
     curthread, sc->bus_reserved));

 desc = &sc->desc[sc->head++];
 if (sc->head == ISMT_DESC_ENTRIES)
  sc->head = 0;

 memset(desc, 0, sizeof(*desc));

 return (desc);
}
