
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef long long uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int u_int ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {int time_mid; int time_hi_and_version; int clock_seq_hi_and_reserved; int clock_seq_low; int* node; scalar_t__ time_low; } ;
typedef TYPE_1__ mkimg_uuid_t ;


 int abort () ;
 int gettimeofday (struct timeval*,int *) ;
 int random () ;

__attribute__((used)) static void
osdep_uuidgen(mkimg_uuid_t *uuid)
{
 struct timeval tv;
 uint64_t time = 0x01B21DD213814000LL;
 u_int i;
 uint16_t seq;

 if (gettimeofday(&tv, ((void*)0)) == -1)
  abort();

 time += (uint64_t)tv.tv_sec * 10000000LL;
 time += tv.tv_usec * 10;

 uuid->time_low = (uint32_t)time;
 uuid->time_mid = (uint16_t)(time >> 32);
 uuid->time_hi_and_version = (uint16_t)(time >> 48) & 0xfff;
 uuid->time_hi_and_version |= 1 << 12;

 seq = random();

 uuid->clock_seq_hi_and_reserved = (uint8_t)(seq >> 8) & 0x3f;
 uuid->clock_seq_low = (uint8_t)seq;

 for (i = 0; i < 6; i++)
  uuid->node[i] = (uint8_t)random();
 uuid->node[0] |= 0x01;
}
