
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mps_softc {int pqdepth; int num_replies; int fqdepth; int replyframesz; int replyfreeindex; scalar_t__ reply_busaddr; scalar_t__* free_queue; scalar_t__ post_queue; } ;


 int EINVAL ;
 int memset (int *,int,int) ;

__attribute__((used)) static int
mps_init_queues(struct mps_softc *sc)
{
 int i;

 memset((uint8_t *)sc->post_queue, 0xff, sc->pqdepth * 8);






 if (sc->num_replies >= sc->fqdepth)
  return (EINVAL);




 for (i = 0; i < sc->fqdepth; i++)
  sc->free_queue[i] = sc->reply_busaddr + (i * sc->replyframesz);
 sc->replyfreeindex = sc->num_replies;

 return (0);
}
