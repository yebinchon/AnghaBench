
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static int
qla_validate_set_port_cfg_bit(uint32_t bits)
{
        if ((bits & 0xF) > 1)
                return (-1);

        if (((bits >> 4) & 0xF) > 2)
                return (-1);

        if (((bits >> 8) & 0xF) > 2)
                return (-1);

        return (0);
}
