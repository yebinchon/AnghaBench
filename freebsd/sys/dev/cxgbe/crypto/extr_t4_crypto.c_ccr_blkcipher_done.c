
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptop {int dummy; } ;
struct cpl_fw6_pld {int dummy; } ;
struct ccr_softc {int dummy; } ;
struct ccr_session {int dummy; } ;



__attribute__((used)) static int
ccr_blkcipher_done(struct ccr_softc *sc, struct ccr_session *s,
    struct cryptop *crp, const struct cpl_fw6_pld *cpl, int error)
{





 return (error);
}
