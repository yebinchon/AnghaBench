
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pir_table_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PIR_BASE ;
 int PIR_SIZE ;
 int PROT_READ ;
 int _PATH_DEVMEM ;
 int banner () ;
 int basename (char*) ;
 int close (int) ;
 int dump_pir_table (int *,void*) ;
 int exit (int ) ;
 int * find_pir_table (void*) ;
 int fprintf (int ,char*) ;
 int getopt (int,char**,char*) ;
 void* mmap (int *,int ,int ,int ,int,int ) ;
 int munmap (void*,int ) ;
 int open (int ,int ) ;
 scalar_t__ optind ;
 int perror (char*) ;
 int progname ;
 int stderr ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int ch, r;
 int err = -1;
 int mem_fd = -1;
 pir_table_t *pir = ((void*)0);
 void *map_addr = MAP_FAILED;
 char *real_pir;

 progname = basename(argv[0]);
 while ((ch = getopt(argc, argv, "h")) != -1)
  switch (ch) {
  case 'h':
  default:
   usage();
 }
 argc -= optind;
 argv += optind;

 if (argc > 0)
  usage();

 banner();



 if ((mem_fd = open(_PATH_DEVMEM, O_RDONLY)) == -1) {
  perror("open");
  goto cleanup;
 }
 map_addr = mmap(((void*)0), PIR_SIZE, PROT_READ, MAP_SHARED, mem_fd,
     PIR_BASE);
 if (map_addr == MAP_FAILED) {
  perror("mmap");
  goto cleanup;
 }



 if ((pir = find_pir_table(map_addr)) == ((void*)0)) {
  fprintf(stderr, "PIR table signature not found.\r\n");
 } else {
  dump_pir_table(pir, map_addr);
  err = 0;
 }

cleanup:
 if (map_addr != MAP_FAILED)
  munmap(map_addr, PIR_SIZE);
 if (mem_fd != -1)
  close(mem_fd);

 exit ((err == 0) ? EXIT_SUCCESS : EXIT_FAILURE);
}
