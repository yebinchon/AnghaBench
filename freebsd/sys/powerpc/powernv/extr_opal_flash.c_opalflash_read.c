
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct opalflash_softc {int sc_opal_id; TYPE_1__* sc_disk; } ;
struct opal_msg {int* params; } ;
typedef int off_t ;
typedef int msg ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int d_sectorsize; } ;


 int EIO ;
 int MIN (int,scalar_t__) ;
 int OPAL_ASYNC_COMPLETION ;
 int OPAL_FLASH_READ ;
 int OPAL_SUCCESS ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int opal_alloc_async_token () ;
 int opal_call (int ,int ,int,int ,int,int) ;
 int opal_free_async_token (int) ;
 int opal_wait_completion (struct opal_msg*,int,int) ;
 int vtophys (scalar_t__) ;

__attribute__((used)) static int
opalflash_read(struct opalflash_softc *sc, off_t off,
    caddr_t data, off_t count)
{
 struct opal_msg msg;
 int rv, size, token;


 if (off % sc->sc_disk->d_sectorsize != 0 ||
     count % sc->sc_disk->d_sectorsize != 0)
  return (EIO);

 token = opal_alloc_async_token();





 rv = 0;
 while (count > 0) {
  size = MIN(count, PAGE_SIZE);
  size = MIN(size, PAGE_SIZE - ((u_long)data & PAGE_MASK));
  rv = opal_call(OPAL_FLASH_READ, sc->sc_opal_id, off,
      vtophys(data), size, token);
  if (rv == OPAL_ASYNC_COMPLETION) {
   rv = opal_wait_completion(&msg, sizeof(msg), token);
   if (rv == OPAL_SUCCESS)
    rv = msg.params[1];
  }
  if (rv != OPAL_SUCCESS)
   break;
  count -= size;
  off += size;
  data += size;
 }
 opal_free_async_token(token);
 if (rv == OPAL_SUCCESS)
  rv = 0;
 else
  rv = EIO;

 return (rv);
}
