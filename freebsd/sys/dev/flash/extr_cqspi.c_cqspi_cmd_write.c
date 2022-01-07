
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct cqspi_softc {int dummy; } ;


 int CQSPI_FLASHCMD ;
 int FLASHCMD_CMDOPCODE_S ;
 int FLASHCMD_EXECCMD ;
 int WRITE4 (struct cqspi_softc*,int ,int) ;
 int cqspi_wait_for_completion (struct cqspi_softc*) ;

__attribute__((used)) static int
cqspi_cmd_write(struct cqspi_softc *sc, uint8_t cmd,
    uint8_t *addr, uint32_t len)
{
 uint32_t reg;
 int ret;

 reg = (cmd << FLASHCMD_CMDOPCODE_S);
 WRITE4(sc, CQSPI_FLASHCMD, reg);
 reg |= FLASHCMD_EXECCMD;
 WRITE4(sc, CQSPI_FLASHCMD, reg);

 ret = cqspi_wait_for_completion(sc);

 return (ret);
}
