
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_3__ {int xsize; int ysize; } ;
typedef TYPE_1__ scr_stat ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_WAITOK ;
 char* cut_buffer ;
 int cut_buffer_size ;
 int free (char*,int ) ;
 scalar_t__ malloc (int,int ,int ) ;

void
sc_alloc_cut_buffer(scr_stat *scp, int wait)
{
    u_char *p;

    if ((cut_buffer == ((void*)0))
 || (cut_buffer_size < scp->xsize * scp->ysize + 1)) {
 p = cut_buffer;
 cut_buffer = ((void*)0);
 if (p != ((void*)0))
     free(p, M_DEVBUF);
 cut_buffer_size = scp->xsize * scp->ysize + 1;
 p = (u_char *)malloc(cut_buffer_size,
        M_DEVBUF, (wait) ? M_WAITOK : M_NOWAIT);
 if (p != ((void*)0))
     p[0] = '\0';
 cut_buffer = p;
    }
}
