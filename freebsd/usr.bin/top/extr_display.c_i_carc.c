
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* carc_buffer ;
 int * carc_names ;
 int fputs (char*,int ) ;
 int lastline ;
 char* setup_buffer (char*,int ) ;
 int stdout ;
 int summary_format (char*,int*,int *) ;

void
i_carc(int *stats)
{
    carc_buffer = setup_buffer(carc_buffer, 0);

    if (carc_names == ((void*)0))
 return;

    fputs("\n     ", stdout);
    lastline++;


    summary_format(carc_buffer, stats, carc_names);
    fputs(carc_buffer, stdout);
}
