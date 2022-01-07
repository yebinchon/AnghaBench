
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ SMID; } ;
union mfi_mpi2_request_descriptor {TYPE_1__ header; } ;
typedef scalar_t__ uint16_t ;
struct mfi_softc {int dummy; } ;
struct mfi_command {int dummy; } ;
struct mfi_cmd_tbolt {scalar_t__ index; } ;


 scalar_t__ mfi_tbolt_build_io (struct mfi_softc*,struct mfi_command*,struct mfi_cmd_tbolt*) ;
 struct mfi_cmd_tbolt* mfi_tbolt_get_cmd (struct mfi_softc*,struct mfi_command*) ;
 union mfi_mpi2_request_descriptor* mfi_tbolt_get_request_descriptor (struct mfi_softc*,scalar_t__) ;
 int mfi_tbolt_return_cmd (struct mfi_softc*,struct mfi_cmd_tbolt*,struct mfi_command*) ;

union mfi_mpi2_request_descriptor *
mfi_build_and_issue_cmd(struct mfi_softc *sc, struct mfi_command *mfi_cmd)
{
 struct mfi_cmd_tbolt *cmd;
 union mfi_mpi2_request_descriptor *req_desc = ((void*)0);
 uint16_t index;
 cmd = mfi_tbolt_get_cmd(sc, mfi_cmd);
 if (cmd == ((void*)0))
  return (((void*)0));

 index = cmd->index;
 req_desc = mfi_tbolt_get_request_descriptor(sc, index-1);
 if (req_desc == ((void*)0)) {
  mfi_tbolt_return_cmd(sc, cmd, mfi_cmd);
  return (((void*)0));
 }

 if (mfi_tbolt_build_io(sc, mfi_cmd, cmd) != 0) {
  mfi_tbolt_return_cmd(sc, cmd, mfi_cmd);
  return (((void*)0));
 }
 req_desc->header.SMID = index;
 return req_desc;
}
