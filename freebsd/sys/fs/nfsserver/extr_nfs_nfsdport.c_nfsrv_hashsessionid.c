
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int NFSX_V4SESSIONID ;
 int hash32_buf (int *,int ,int ) ;

uint32_t
nfsrv_hashsessionid(uint8_t *sessionid)
{
 uint32_t hashval;

 hashval = hash32_buf(sessionid, NFSX_V4SESSIONID, 0);
 return (hashval);
}
