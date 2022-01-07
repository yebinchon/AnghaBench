
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TW_UINT32 ;
typedef int TW_INT8 ;


 int TWA_STATUS_ATTENTION_INTERRUPT ;
 int TWA_STATUS_COMMAND_INTERRUPT ;
 int TWA_STATUS_COMMAND_QUEUE_EMPTY ;
 int TWA_STATUS_COMMAND_QUEUE_FULL ;
 int TWA_STATUS_HOST_INTERRUPT ;
 int TWA_STATUS_MICROCONTROLLER_READY ;
 int TWA_STATUS_PCI_ABORT_INTERRUPT ;
 int TWA_STATUS_PCI_PARITY_ERROR_INTERRUPT ;
 int TWA_STATUS_QUEUE_ERROR_INTERRUPT ;
 int TWA_STATUS_RESPONSE_INTERRUPT ;
 int TWA_STATUS_RESPONSE_QUEUE_EMPTY ;
 int tw_osl_strcpy (int *,char*) ;
 size_t tw_osl_strlen (int *) ;

TW_INT8 *
tw_cli_describe_bits(TW_UINT32 reg, TW_INT8 *str)
{
 tw_osl_strcpy(str, "[");

 if (reg & TWA_STATUS_COMMAND_QUEUE_EMPTY)
  tw_osl_strcpy(&str[tw_osl_strlen(str)], "CMD_Q_EMPTY,");
 if (reg & TWA_STATUS_MICROCONTROLLER_READY)
  tw_osl_strcpy(&str[tw_osl_strlen(str)], "MC_RDY,");
 if (reg & TWA_STATUS_RESPONSE_QUEUE_EMPTY)
  tw_osl_strcpy(&str[tw_osl_strlen(str)], "RESP_Q_EMPTY,");
 if (reg & TWA_STATUS_COMMAND_QUEUE_FULL)
  tw_osl_strcpy(&str[tw_osl_strlen(str)], "CMD_Q_FULL,");
 if (reg & TWA_STATUS_RESPONSE_INTERRUPT)
  tw_osl_strcpy(&str[tw_osl_strlen(str)], "RESP_INTR,");
 if (reg & TWA_STATUS_COMMAND_INTERRUPT)
  tw_osl_strcpy(&str[tw_osl_strlen(str)], "CMD_INTR,");
 if (reg & TWA_STATUS_ATTENTION_INTERRUPT)
  tw_osl_strcpy(&str[tw_osl_strlen(str)], "ATTN_INTR,");
 if (reg & TWA_STATUS_HOST_INTERRUPT)
  tw_osl_strcpy(&str[tw_osl_strlen(str)], "HOST_INTR,");
 if (reg & TWA_STATUS_PCI_ABORT_INTERRUPT)
  tw_osl_strcpy(&str[tw_osl_strlen(str)], "PCI_ABRT,");
 if (reg & TWA_STATUS_QUEUE_ERROR_INTERRUPT)
  tw_osl_strcpy(&str[tw_osl_strlen(str)], "Q_ERR,");
 if (reg & TWA_STATUS_PCI_PARITY_ERROR_INTERRUPT)
  tw_osl_strcpy(&str[tw_osl_strlen(str)], "PCI_PERR");

 tw_osl_strcpy(&str[tw_osl_strlen(str)], "]");
 return(str);
}
