
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_hal_priv {int dummy; } ;


 int WR4 (struct mwl_hal_priv*,int,int) ;

__attribute__((used)) static void
mwlPokeSdramController(struct mwl_hal_priv *mh, int SDRAMSIZE_Addr)
{

 WR4(mh, 0x00006014, 0x33);
 WR4(mh, 0x00006018, 0xa3a2632);
 WR4(mh, 0x00006010, SDRAMSIZE_Addr);
}
