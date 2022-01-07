
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_softc {int dummy; } ;


 int R_42XX_STATUS ;
 int STATUS_42XX_INT_PENDING ;
 int ida_inl (struct ida_softc*,int ) ;

__attribute__((used)) static int
ida_v4_int_pending(struct ida_softc *ida)
{
 return (ida_inl(ida, R_42XX_STATUS) & STATUS_42XX_INT_PENDING);
}
