
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_sc {int dummy; } ;
typedef int if_ctx_t ;


 int iavf_stop (struct iavf_sc*) ;
 struct iavf_sc* iflib_get_softc (int ) ;

__attribute__((used)) static void
iavf_if_stop(if_ctx_t ctx)
{
 struct iavf_sc *sc = iflib_get_softc(ctx);

 iavf_stop(sc);
}
