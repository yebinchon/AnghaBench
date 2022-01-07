
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct gif_softc {scalar_t__ gif_family; int gif_options; } ;


 scalar_t__ AF_INET ;
 int CK_LIST_REMOVE (struct gif_softc*,int ) ;
 int GIF_IGNORE_SOURCE ;
 int MPASS (int) ;
 int chain ;
 int in_gif_attach (struct gif_softc*) ;
 int srchash ;

int
in_gif_setopts(struct gif_softc *sc, u_int options)
{


 MPASS(sc->gif_family == AF_INET);
 MPASS(sc->gif_options != options);

 if ((options & GIF_IGNORE_SOURCE) !=
     (sc->gif_options & GIF_IGNORE_SOURCE)) {
  CK_LIST_REMOVE(sc, srchash);
  CK_LIST_REMOVE(sc, chain);
  sc->gif_options = options;
  in_gif_attach(sc);
 }
 return (0);
}
