
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct adapter {int dev; } ;


 int LOG_DEBUG ;
 int M_NOWAIT ;
 int SBUF_AUTOEXTEND ;
 int device_get_nameunit (int ) ;
 int log (int ,char*,int ,int ) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_devlog (struct adapter*,struct sbuf*,int ) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new (struct sbuf*,int *,int,int ) ;

void
t4_os_dump_devlog(struct adapter *sc)
{
 int rc;
 struct sbuf sb;

 if (sbuf_new(&sb, ((void*)0), 4096, SBUF_AUTOEXTEND) != &sb)
  return;
 rc = sbuf_devlog(sc, &sb, M_NOWAIT);
 if (rc == 0) {
  rc = sbuf_finish(&sb);
  if (rc == 0) {
   log(LOG_DEBUG, "%s: device log follows.\n%s",
        device_get_nameunit(sc->dev), sbuf_data(&sb));
  }
 }
 sbuf_delete(&sb);
}
