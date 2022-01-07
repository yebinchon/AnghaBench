
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int connect_to_pccardd (char**) ;
 int exit (int ) ;
 int free (char*) ;
 scalar_t__ get_slot_info (int,int,char**,char**,char**,int*) ;
 int get_slot_number (int) ;
 int printf (char*,int,...) ;
 scalar_t__ proc_arg (int,char**) ;
 int slot_map ;
 char* strstate (int) ;
 int unlink (char*) ;

int
main(int ac, char **av)
{
    char *path = ((void*)0);
    int so = -1;
    int nslot;
    int i;

    if (proc_arg(ac, av) < 0)
 goto out;
    if ((so = connect_to_pccardd(&path)) < 0)
 goto out;
    if ((nslot = get_slot_number(so)) < 0)
 goto out;
    if (slot_map == 0) {
 printf("%d\n", nslot);
    } else {
 for (i = 0; i < nslot; i++) {
     if ((slot_map & (1 << i))) {
  char *manuf;
  char *version;
  char *device;
  int state;

  if (get_slot_info(so, i, &manuf, &version, &device,
      &state) < 0)
      goto out;
  if (manuf == ((void*)0) || version == ((void*)0) || device == ((void*)0))
      goto out;
  printf("%d~%s~%s~%s~%s\n",
         i, manuf, version, device, strstate(state));
  free(manuf);
  free(version);
  free(device);
     }
 }
    }
  out:
    if (path) {
 unlink(path);
 free(path);
    }
    if (so >= 0)
 close(so);
    exit(0);
}
