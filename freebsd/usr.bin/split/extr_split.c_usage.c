
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr,
"usage: split [-l line_count] [-a suffix_length] [file [prefix]]\n"
"       split -b byte_count[K|k|M|m|G|g] [-a suffix_length] [file [prefix]]\n"
"       split -n chunk_count [-a suffix_length] [file [prefix]]\n"
"       split -p pattern [-a suffix_length] [file [prefix]]\n");
 exit(EX_USAGE);
}
