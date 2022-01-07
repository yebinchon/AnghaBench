
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint128_t ;
typedef TYPE_2__* provider_p ;
typedef int buffer ;
struct TYPE_7__ {int (* create ) (int *,int *,int const*,int) ;} ;
typedef TYPE_3__ attr_t ;
struct TYPE_6__ {TYPE_1__* profile; } ;
struct TYPE_5__ {TYPE_3__* attrs; } ;


 scalar_t__ server_search_uuid_sub (int *,int *,int const*) ;
 int stub1 (int *,int *,int const*,int) ;

__attribute__((used)) static int
server_search_uuid(provider_p const provider, const uint128_t *uuid)
{
        uint8_t buffer[256];
        const attr_t *attr;
        int len;

        for (attr = provider->profile->attrs; attr->create != ((void*)0); attr++) {

                len = attr->create(buffer, buffer + sizeof(buffer),
                    (const uint8_t *)provider->profile, sizeof(*provider->profile));
                if (len < 0)
                        continue;
                if (server_search_uuid_sub(buffer, buffer + len, uuid) == 0)
                        return (0);
        }
        return (1);
}
