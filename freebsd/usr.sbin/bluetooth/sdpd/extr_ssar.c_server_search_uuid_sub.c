
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int uint32_t ;
typedef int uint128_t ;
struct TYPE_5__ {int* b; } ;
typedef TYPE_1__ int128_t ;
typedef int duuid ;
 int SDP_GET16 (int,int const*) ;
 int SDP_GET32 (int,int const*) ;
 int SDP_GET8 (int const,int const*) ;
 int SDP_GET_UUID128 (TYPE_1__*,int const*) ;
 int memcmp (TYPE_1__*,int const*,int) ;
 int memcpy (TYPE_1__*,int *,int) ;
 int uuid_base ;

__attribute__((used)) static int
server_search_uuid_sub(uint8_t *buf, uint8_t const * const eob, const uint128_t *uuid)
{
        int128_t duuid;
        uint32_t value;
        uint8_t type;

        while (buf < eob) {

                SDP_GET8(type, buf);

                switch (type) {
                case 129:
                        if (buf + 2 > eob)
                                continue;
                        SDP_GET16(value, buf);

                        memcpy(&duuid, &uuid_base, sizeof(duuid));
                        duuid.b[2] = value >> 8 & 0xff;
                        duuid.b[3] = value & 0xff;

                        if (memcmp(&duuid, uuid, sizeof(duuid)) == 0)
                                return (0);
                        break;
                case 128:
                        if (buf + 4 > eob)
                                continue;
                        SDP_GET32(value, buf);
                        memcpy(&duuid, &uuid_base, sizeof(duuid));
                        duuid.b[0] = value >> 24 & 0xff;
                        duuid.b[1] = value >> 16 & 0xff;
                        duuid.b[2] = value >> 8 & 0xff;
                        duuid.b[3] = value & 0xff;

                        if (memcmp(&duuid, uuid, sizeof(duuid)) == 0)
                                return (0);
                        break;
                case 130:
                        if (buf + 16 > eob)
                                continue;
                        SDP_GET_UUID128(&duuid, buf);

                        if (memcmp(&duuid, uuid, sizeof(duuid)) == 0)
                                return (0);
                        break;
                case 131:
                case 142:
                case 139:
                        buf++;
                        break;
                case 134:
                case 145:
                case 141:
                        buf += 2;
                        break;
                case 133:
                case 144:
                case 140:
                        buf += 4;
                        break;
                case 132:
                case 143:
                        buf += 8;
                        break;
                case 135:
                case 146:
                        buf += 16;
                        break;
                case 136:
                        if (buf + 1 > eob)
                                continue;
                        SDP_GET8(value, buf);
                        buf += value;
                        break;
                case 138:
                        if (buf + 2 > eob)
                                continue;
                        SDP_GET16(value, buf);
                        if (value > (eob - buf))
                                return (1);
                        buf += value;
                        break;
                case 137:
                        if (buf + 4 > eob)
                                continue;
                        SDP_GET32(value, buf);
                        if (value > (eob - buf))
                                return (1);
                        buf += value;
                        break;
                case 147:
                        buf += 1;
                        break;
                default:
                        return (1);
                }
        }
        return (1);
}
