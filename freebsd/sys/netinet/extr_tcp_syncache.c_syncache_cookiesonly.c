
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ paused; } ;


 TYPE_1__ V_tcp_syncache ;
 scalar_t__ V_tcp_syncookies ;
 scalar_t__ V_tcp_syncookiesonly ;

__attribute__((used)) static inline bool
syncache_cookiesonly(void)
{

 return (V_tcp_syncookies && (V_tcp_syncache.paused ||
     V_tcp_syncookiesonly));
}
