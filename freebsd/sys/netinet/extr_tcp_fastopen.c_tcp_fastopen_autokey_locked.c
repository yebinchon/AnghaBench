
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TCP_FASTOPEN_KEY_LEN ;
 int arc4rand (int *,int,int ) ;
 int tcp_fastopen_addkey_locked (int *) ;

__attribute__((used)) static void
tcp_fastopen_autokey_locked(void)
{
 uint8_t newkey[TCP_FASTOPEN_KEY_LEN];

 arc4rand(newkey, TCP_FASTOPEN_KEY_LEN, 0);
 tcp_fastopen_addkey_locked(newkey);
}
