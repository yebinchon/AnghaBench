
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
 int sbuf_cim_la (struct adapter*,struct sbuf*,int ) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new (struct sbuf*,int *,int,int ) ;

bool
t4_os_dump_cimla(struct adapter *sc, int arg, bool verbose)
{
 struct sbuf sb;
 int rc;

 if (sbuf_new(&sb, ((void*)0), 4096, SBUF_AUTOEXTEND) != &sb)
  return (0);
 rc = sbuf_cim_la(sc, &sb, M_NOWAIT);
 if (rc == 0) {
  rc = sbuf_finish(&sb);
  if (rc == 0) {
   log(LOG_DEBUG, "%s: CIM LA dump follows.\n%s",
        device_get_nameunit(sc->dev), sbuf_data(&sb));
  }
 }
 sbuf_delete(&sb);
 return (0);
}
