
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct e82545_softc {scalar_t__ nvm_bits; void* nvm_mode; scalar_t__ nvm_opaddr; int nvm_data; int eeprom_control; int* eeprom_data; } ;


 int DPRINTF (char*,void*,...) ;
 int E1000_EECD_DI ;
 int E1000_EECD_DO ;
 scalar_t__ E82545_NVM_ADDR_MASK ;
 void* E82545_NVM_DATA_BITS ;
 scalar_t__ E82545_NVM_EEPROM_SIZE ;
 void* E82545_NVM_MODE_DATAIN ;
 void* E82545_NVM_MODE_DATAOUT ;
 void* E82545_NVM_MODE_OPADDR ;
 void* E82545_NVM_OPADDR_BITS ;

 scalar_t__ E82545_NVM_OPCODE_MASK ;



__attribute__((used)) static void
e82545_eecd_strobe(struct e82545_softc *sc)
{







 if (sc->nvm_bits == 0) {
  DPRINTF("eeprom state machine not expecting data! "
   "0x%x 0x%x 0x%x 0x%x\r\n",
   sc->nvm_mode, sc->nvm_bits,
   sc->nvm_opaddr, sc->nvm_data);
  return;
 }
 sc->nvm_bits--;
 if (sc->nvm_mode == E82545_NVM_MODE_DATAOUT) {

  if (sc->nvm_data & 0x8000) {
   sc->eeprom_control |= E1000_EECD_DO;
  } else {
   sc->eeprom_control &= ~E1000_EECD_DO;
  }
  sc->nvm_data <<= 1;
  if (sc->nvm_bits == 0) {

   sc->nvm_opaddr = 0;
   sc->nvm_mode = E82545_NVM_MODE_OPADDR;
   sc->nvm_bits = E82545_NVM_OPADDR_BITS;
  }
 } else if (sc->nvm_mode == E82545_NVM_MODE_DATAIN) {

  sc->nvm_data <<= 1;
  if (sc->eeprom_control & E1000_EECD_DI) {
   sc->nvm_data |= 1;
  }
  if (sc->nvm_bits == 0) {

   uint16_t op = sc->nvm_opaddr & E82545_NVM_OPCODE_MASK;
   uint16_t addr = sc->nvm_opaddr & E82545_NVM_ADDR_MASK;
   if (op != 128) {
    DPRINTF("Illegal eeprom write op 0x%x\r\n",
     sc->nvm_opaddr);
   } else if (addr >= E82545_NVM_EEPROM_SIZE) {
    DPRINTF("Illegal eeprom write addr 0x%x\r\n",
     sc->nvm_opaddr);
   } else {
    DPRINTF("eeprom write eeprom[0x%x] = 0x%x\r\n",
    addr, sc->nvm_data);
    sc->eeprom_data[addr] = sc->nvm_data;
   }

   sc->nvm_opaddr = 0;
   sc->nvm_mode = E82545_NVM_MODE_OPADDR;
   sc->nvm_bits = E82545_NVM_OPADDR_BITS;
  }
 } else if (sc->nvm_mode == E82545_NVM_MODE_OPADDR) {
  sc->nvm_opaddr <<= 1;
  if (sc->eeprom_control & E1000_EECD_DI) {
   sc->nvm_opaddr |= 1;
  }
  if (sc->nvm_bits == 0) {
   uint16_t op = sc->nvm_opaddr & E82545_NVM_OPCODE_MASK;
   switch (op) {
   case 130:
    DPRINTF("eeprom write enable: 0x%x\r\n",
     sc->nvm_opaddr);

    sc->nvm_opaddr = 0;
    sc->nvm_mode = E82545_NVM_MODE_OPADDR;
    sc->nvm_bits = E82545_NVM_OPADDR_BITS;
    break;
   case 129:
   {
    uint16_t addr = sc->nvm_opaddr &
     E82545_NVM_ADDR_MASK;
    sc->nvm_mode = E82545_NVM_MODE_DATAOUT;
    sc->nvm_bits = E82545_NVM_DATA_BITS;
    if (addr < E82545_NVM_EEPROM_SIZE) {
     sc->nvm_data = sc->eeprom_data[addr];
     DPRINTF("eeprom read: eeprom[0x%x] = 0x%x\r\n",
      addr, sc->nvm_data);
    } else {
     DPRINTF("eeprom illegal read: 0x%x\r\n",
      sc->nvm_opaddr);
     sc->nvm_data = 0;
    }
    break;
   }
   case 128:
    sc->nvm_mode = E82545_NVM_MODE_DATAIN;
    sc->nvm_bits = E82545_NVM_DATA_BITS;
    sc->nvm_data = 0;
    break;
   default:
    DPRINTF("eeprom unknown op: 0x%x\r\r",
     sc->nvm_opaddr);

    sc->nvm_opaddr = 0;
    sc->nvm_mode = E82545_NVM_MODE_OPADDR;
    sc->nvm_bits = E82545_NVM_OPADDR_BITS;
   }
  }
 } else {
  DPRINTF("eeprom state machine wrong state! "
   "0x%x 0x%x 0x%x 0x%x\r\n",
   sc->nvm_mode, sc->nvm_bits,
   sc->nvm_opaddr, sc->nvm_data);
 }
}
