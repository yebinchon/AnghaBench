
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int AFMT_8BIT ;
 int AFMT_CHANNEL (int) ;

__attribute__((used)) static inline u_int32_t
cs4281_format_to_bps(u_int32_t format)
{
    return ((AFMT_8BIT & format) ? 1 : 2) *
 ((AFMT_CHANNEL(format) > 1) ? 2 : 1);
}
