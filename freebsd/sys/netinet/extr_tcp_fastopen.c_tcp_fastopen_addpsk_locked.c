
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ newest_psk; int * psk; } ;


 int TCP_FASTOPEN_KEY_LEN ;
 scalar_t__ TCP_FASTOPEN_MAX_PSKS ;
 TYPE_1__ V_tcp_fastopen_keys ;
 scalar_t__ V_tcp_fastopen_numpsks ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static void
tcp_fastopen_addpsk_locked(uint8_t *psk)
{

 V_tcp_fastopen_keys.newest_psk++;
 if (V_tcp_fastopen_keys.newest_psk == TCP_FASTOPEN_MAX_PSKS)
  V_tcp_fastopen_keys.newest_psk = 0;
 memcpy(V_tcp_fastopen_keys.psk[V_tcp_fastopen_keys.newest_psk], psk,
     TCP_FASTOPEN_KEY_LEN);
 if (V_tcp_fastopen_numpsks < TCP_FASTOPEN_MAX_PSKS)
  V_tcp_fastopen_numpsks++;
}
