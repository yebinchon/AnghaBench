
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udl_softc {int dummy; } ;
struct udl_cmd_buf {int dummy; } ;


 int UDL_LOCK (struct udl_softc*) ;
 int UDL_UNLOCK (struct udl_softc*) ;
 struct udl_cmd_buf* udl_cmd_buf_alloc_locked (struct udl_softc*,int) ;

__attribute__((used)) static struct udl_cmd_buf *
udl_cmd_buf_alloc(struct udl_softc *sc, int flags)
{
 struct udl_cmd_buf *cb;

 UDL_LOCK(sc);
 cb = udl_cmd_buf_alloc_locked(sc, flags);
 UDL_UNLOCK(sc);
 return (cb);
}
