
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_rsa_command {int rsatype; int rsaopsize; } ;



__attribute__((used)) static int
xlp_get_rsa_opsize(struct xlp_rsa_command *cmd, unsigned int bits)
{

 if (bits == 0 || bits > 8192)
  return (-1);


 if (bits <= 512) {
  cmd->rsatype = 0x40;
  cmd->rsaopsize = 64;
 } else if (bits <= 1024) {
  cmd->rsatype = 0x41;
  cmd->rsaopsize = 128;
 } else if (bits <= 2048) {
  cmd->rsatype = 0x42;
  cmd->rsaopsize = 256;
 } else if (bits <= 4096) {
  cmd->rsatype = 0x43;
  cmd->rsaopsize = 512;
 } else if (bits <= 8192) {
  cmd->rsatype = 0x44;
  cmd->rsaopsize = 1024;
 }
 return (0);
}
