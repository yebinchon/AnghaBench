
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* at; } ;
typedef TYPE_1__ _SPRINTF_INFO ;



__attribute__((used)) static void _sprintf_emitter(char c, void *pData)
{

    *(((_SPRINTF_INFO *)pData)->at) = c;
    ((_SPRINTF_INFO *)pData)->at++;
}
