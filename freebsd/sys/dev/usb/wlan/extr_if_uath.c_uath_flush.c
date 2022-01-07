
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int dummy; } ;


 int uath_cmdflush (struct uath_softc*) ;
 int uath_dataflush (struct uath_softc*) ;

__attribute__((used)) static int
uath_flush(struct uath_softc *sc)
{
 int error;

 error = uath_dataflush(sc);
 if (error != 0)
  goto failed;

 error = uath_cmdflush(sc);
 if (error != 0)
  goto failed;

failed:
 return (error);
}
