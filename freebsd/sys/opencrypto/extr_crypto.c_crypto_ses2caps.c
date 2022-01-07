
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* crypto_session_t ;
struct TYPE_3__ {int capabilities; } ;



uint32_t
crypto_ses2caps(crypto_session_t crypto_session)
{
 return (crypto_session->capabilities);
}
