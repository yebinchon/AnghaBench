
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ ng_btsocket_l2cap_raw_token ;
 int ng_btsocket_l2cap_raw_token_mtx ;

__attribute__((used)) static void
ng_btsocket_l2cap_raw_get_token(u_int32_t *token)
{
 mtx_lock(&ng_btsocket_l2cap_raw_token_mtx);

 if (++ ng_btsocket_l2cap_raw_token == 0)
  ng_btsocket_l2cap_raw_token = 1;

 *token = ng_btsocket_l2cap_raw_token;

 mtx_unlock(&ng_btsocket_l2cap_raw_token_mtx);
}
