
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * ocs; } ;
typedef TYPE_1__ ocs_textbuf_t ;



uint32_t
ocs_textbuf_initialized(ocs_textbuf_t *textbuf)
{
 return (textbuf->ocs != ((void*)0));
}
