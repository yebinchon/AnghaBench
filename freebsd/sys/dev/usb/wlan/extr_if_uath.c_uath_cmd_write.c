
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uath_softc {int dummy; } ;


 int UATH_CMD_FLAG_READ ;
 int uath_cmdsend (struct uath_softc*,int ,void const*,int,int *,int ,int) ;

__attribute__((used)) static int
uath_cmd_write(struct uath_softc *sc, uint32_t code, const void *data, int len,
    int flags)
{

 flags &= ~UATH_CMD_FLAG_READ;
 return uath_cmdsend(sc, code, data, len, ((void*)0), 0, flags);
}
