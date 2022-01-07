
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPL_ERR_CONN_EXIST ;
 int CPL_ERR_CONN_EXIST_SYNRECV ;
 int CPL_ERR_TCAM_FULL ;
 int CPL_ERR_TCAM_MISS ;
 int CPL_ERR_TCAM_PARITY ;

__attribute__((used)) static inline int act_open_has_tid(int status)
{
 return (status != CPL_ERR_TCAM_PARITY &&
  status != CPL_ERR_TCAM_MISS &&
  status != CPL_ERR_TCAM_FULL &&
  status != CPL_ERR_CONN_EXIST_SYNRECV &&
  status != CPL_ERR_CONN_EXIST);
}
