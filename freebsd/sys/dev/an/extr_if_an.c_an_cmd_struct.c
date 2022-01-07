
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_softc {int mpi350; } ;
struct an_reply {int an_resp0; int an_resp1; int an_resp2; int an_status; } ;
struct an_command {int an_parm0; int an_parm1; int an_parm2; int an_cmd; } ;


 int AN_CMD_BUSY ;
 int AN_COMMAND (int ) ;
 int AN_EVENT_ACK (int ) ;
 int AN_EVENT_STAT (int ) ;
 int AN_EV_CLR_STUCK_BUSY ;
 int AN_EV_CMD ;
 int AN_LOCK_ASSERT (struct an_softc*) ;
 int AN_PARAM0 (int ) ;
 int AN_PARAM1 (int ) ;
 int AN_PARAM2 (int ) ;
 int AN_RESP0 (int ) ;
 int AN_RESP1 (int ) ;
 int AN_RESP2 (int ) ;
 int AN_STATUS (int ) ;
 int AN_TIMEOUT ;
 int CSR_READ_2 (struct an_softc*,int ) ;
 int CSR_WRITE_2 (struct an_softc*,int ,int) ;
 int DELAY (int) ;
 int ETIMEDOUT ;
 int printf (char*) ;

__attribute__((used)) static int
an_cmd_struct(struct an_softc *sc, struct an_command *cmd,
    struct an_reply *reply)
{
 int i;

 AN_LOCK_ASSERT(sc);
 for (i = 0; i != AN_TIMEOUT; i++) {
  if (CSR_READ_2(sc, AN_COMMAND(sc->mpi350)) & AN_CMD_BUSY) {
   DELAY(1000);
  } else
   break;
 }

 if( i == AN_TIMEOUT) {
  printf("BUSY\n");
  return(ETIMEDOUT);
 }

 CSR_WRITE_2(sc, AN_PARAM0(sc->mpi350), cmd->an_parm0);
 CSR_WRITE_2(sc, AN_PARAM1(sc->mpi350), cmd->an_parm1);
 CSR_WRITE_2(sc, AN_PARAM2(sc->mpi350), cmd->an_parm2);
 CSR_WRITE_2(sc, AN_COMMAND(sc->mpi350), cmd->an_cmd);

 for (i = 0; i < AN_TIMEOUT; i++) {
  if (CSR_READ_2(sc, AN_EVENT_STAT(sc->mpi350)) & AN_EV_CMD)
   break;
  DELAY(1000);
 }

 reply->an_resp0 = CSR_READ_2(sc, AN_RESP0(sc->mpi350));
 reply->an_resp1 = CSR_READ_2(sc, AN_RESP1(sc->mpi350));
 reply->an_resp2 = CSR_READ_2(sc, AN_RESP2(sc->mpi350));
 reply->an_status = CSR_READ_2(sc, AN_STATUS(sc->mpi350));

 if (CSR_READ_2(sc, AN_COMMAND(sc->mpi350)) & AN_CMD_BUSY)
  CSR_WRITE_2(sc, AN_EVENT_ACK(sc->mpi350),
      AN_EV_CLR_STUCK_BUSY);


 CSR_WRITE_2(sc, AN_EVENT_ACK(sc->mpi350), AN_EV_CMD);

 if (i == AN_TIMEOUT)
  return(ETIMEDOUT);

 return(0);
}
