
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
    (void)fprintf(stderr,
 "usage: limits [-C class|-P pid|-U user] [-eaSHBE] "
 "[-bcdfklmnostuvpw [val]] [[name=val ...] cmd]\n");
    exit(EXIT_FAILURE);
}
