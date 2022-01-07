
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int xbd_flags; } ;
struct sbuf {int dummy; } ;


 int SBUF_FIXEDLEN ;
 int XBDF_BARRIER ;
 int XBDF_DISCARD ;
 int XBDF_FLUSH ;
 int XBDF_PERSISTENT ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_len (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,size_t,int ) ;
 int sbuf_printf (struct sbuf*,char*) ;

__attribute__((used)) static int
xbd_feature_string(struct xbd_softc *sc, char *features, size_t len)
{
 struct sbuf sb;
 int feature_cnt;

 sbuf_new(&sb, features, len, SBUF_FIXEDLEN);

 feature_cnt = 0;
 if ((sc->xbd_flags & XBDF_FLUSH) != 0) {
  sbuf_printf(&sb, "flush");
  feature_cnt++;
 }

 if ((sc->xbd_flags & XBDF_BARRIER) != 0) {
  if (feature_cnt != 0)
   sbuf_printf(&sb, ", ");
  sbuf_printf(&sb, "write_barrier");
  feature_cnt++;
 }

 if ((sc->xbd_flags & XBDF_DISCARD) != 0) {
  if (feature_cnt != 0)
   sbuf_printf(&sb, ", ");
  sbuf_printf(&sb, "discard");
  feature_cnt++;
 }

 if ((sc->xbd_flags & XBDF_PERSISTENT) != 0) {
  if (feature_cnt != 0)
   sbuf_printf(&sb, ", ");
  sbuf_printf(&sb, "persistent_grants");
  feature_cnt++;
 }

 (void) sbuf_finish(&sb);
 return (sbuf_len(&sb));
}
