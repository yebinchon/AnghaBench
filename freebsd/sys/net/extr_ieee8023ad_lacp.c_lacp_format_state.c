
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LACP_STATE_BITS ;
 int snprintf (char*,size_t,char*,int ,int ) ;

const char *
lacp_format_state(uint8_t state, char *buf, size_t buflen)
{
 snprintf(buf, buflen, "%b", state, LACP_STATE_BITS);
 return (buf);
}
