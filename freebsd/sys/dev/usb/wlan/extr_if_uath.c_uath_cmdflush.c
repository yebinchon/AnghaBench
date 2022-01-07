
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int dummy; } ;


 int WDCMSG_FLUSH ;
 int uath_cmd_write (struct uath_softc*,int ,int *,int ,int ) ;

__attribute__((used)) static int
uath_cmdflush(struct uath_softc *sc)
{

 return uath_cmd_write(sc, WDCMSG_FLUSH, ((void*)0), 0, 0);
}
