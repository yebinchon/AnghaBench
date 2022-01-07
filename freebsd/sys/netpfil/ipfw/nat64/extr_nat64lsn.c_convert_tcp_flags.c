
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TH_ACK ;
 int TH_FIN ;
 int TH_RST ;
 int TH_SYN ;

__attribute__((used)) static inline uint8_t
convert_tcp_flags(uint8_t flags)
{
 uint8_t result;

 result = flags & (TH_FIN|TH_SYN);
 result |= (flags & TH_RST) >> 2;
 result |= (flags & TH_ACK) >> 2;

 return (result);
}
