
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int u_char ;


 int print_speed (int ) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int tpl32 (int*) ;

__attribute__((used)) static void
dump_network_ext(u_char *p, int len)
{
 static const char *tech[] = {
  "Undefined", "ARCnet", "Ethernet", "Token ring",
  "Localtalk", "FDDI/CDDI", "ATM", "Wireless"
 };
 static const char *media[] = {
  "Undefined", "UTP", "STP", "Thin coax",
  "THICK coax", "Fiber", "900 MHz", "2.4 GHz",
  "5.4 GHz", "Diffuse Infrared", "Point to point Infrared"
 };
 u_int i = 0;

 if (len < 1)
  return;
 switch (p[0]) {
 case 1:
  if (len < 2)
   goto err;
  printf("\tNetwork technology: %s\n", tech[p[1] & 7]);
  break;
 case 2:
  if (len < 5)
   goto err;
  printf("\tNetwork speed: ");
  print_speed(tpl32(p + 1));
  putchar('\n');
  break;
 case 3:
  if (len < 2)
   goto err;
  if (p[1] <= 10)
   i = p[1];
  printf("\tNetwork media: %s\n", media[i]);
  break;
 case 4:
  if (len <= 2 || len < p[1] + 2)
   goto err;
  printf("\tNetwork node ID:");
  for (i = 0; i < p[1]; i++)
   printf(" %02x", p[i + 2]);
  putchar('\n');
  break;
 case 5:
  if (len < 2)
   goto err;
  printf("\tNetwork connector: %s connector standard\n",
         (p[1] == 0) ? "open" : "closed");
  break;
 err:
  printf("\tWrong length for network extension tuple\n");
  return;
 }
}
