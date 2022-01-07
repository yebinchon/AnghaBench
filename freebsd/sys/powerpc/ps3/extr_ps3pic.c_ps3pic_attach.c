
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ps3pic_softc {int sc_ipi_virq; int * sc_ipi_outlet; scalar_t__ bitmap_thread1; scalar_t__ bitmap_thread0; scalar_t__ mask_thread1; scalar_t__ mask_thread0; } ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int FALSE ;
 int M_NOWAIT ;
 int M_PS3PIC ;
 int M_ZERO ;
 int PAGE_SIZE ;
 scalar_t__ contigmalloc (int,int ,int,int ,int ,int,int ) ;
 struct ps3pic_softc* device_get_softc (int ) ;
 int fls (int ) ;
 int lv1_configure_irq_state_bitmap (int ,int,int ) ;
 int lv1_connect_irq_plug_ext (int ,int,int,int ,int ) ;
 int lv1_construct_event_receive_port (int *) ;
 int lv1_get_logical_ppe_id (int *) ;
 int mfctrl () ;
 int powerpc_register_pic (int ,int ,int,int,int ) ;
 int vtophys (scalar_t__) ;

__attribute__((used)) static int
ps3pic_attach(device_t dev)
{
 struct ps3pic_softc *sc;
 uint64_t ppe;
 int thread;

 sc = device_get_softc(dev);

 sc->bitmap_thread0 = contigmalloc(128 , M_PS3PIC,
     M_NOWAIT | M_ZERO, 0, BUS_SPACE_MAXADDR, 64 ,
     PAGE_SIZE );
 sc->mask_thread0 = sc->bitmap_thread0 + 4;
 sc->bitmap_thread1 = sc->bitmap_thread0 + 8;
 sc->mask_thread1 = sc->bitmap_thread0 + 12;

 lv1_get_logical_ppe_id(&ppe);
 thread = 32 - fls(mfctrl());
 lv1_configure_irq_state_bitmap(ppe, thread,
     vtophys(sc->bitmap_thread0));

 sc->sc_ipi_virq = 63;
 powerpc_register_pic(dev, 0, sc->sc_ipi_virq, 1, FALSE);
 return (0);
}
