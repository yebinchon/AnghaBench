
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct envy24_delta_ak4524_codec {int dummy; } ;


 int i2c_ack (struct envy24_delta_ak4524_codec*,void (*) (void*,unsigned int,unsigned int)) ;
 int i2c_start (struct envy24_delta_ak4524_codec*,void (*) (void*,unsigned int,unsigned int)) ;
 int i2c_stop (struct envy24_delta_ak4524_codec*,void (*) (void*,unsigned int,unsigned int)) ;
 int i2c_wrbit (struct envy24_delta_ak4524_codec*,void (*) (void*,unsigned int,unsigned int),int) ;

__attribute__((used)) static void
i2c_wr(void *codec, void (*ctrl)(void*, unsigned int, unsigned int), u_int32_t dev, int reg, u_int8_t val)
{
        struct envy24_delta_ak4524_codec *ptr = codec;
        int mask;

        i2c_start(ptr, ctrl);

        for (mask = 0x80; mask != 0; mask >>= 1)
                i2c_wrbit(ptr, ctrl, dev & mask);
        i2c_ack(ptr, ctrl);

        if (reg != 0xff) {
        for (mask = 0x80; mask != 0; mask >>= 1)
                i2c_wrbit(ptr, ctrl, reg & mask);
        i2c_ack(ptr, ctrl);
        }

        for (mask = 0x80; mask != 0; mask >>= 1)
                i2c_wrbit(ptr, ctrl, val & mask);
        i2c_ack(ptr, ctrl);

        i2c_stop(ptr, ctrl);
}
