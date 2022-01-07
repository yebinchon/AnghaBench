
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {scalar_t__ rclk; int chan; } ;


 scalar_t__ DEFAULT_RCLK ;
 int SAB_CCR0 ;
 int SAB_CCR0_MCE ;
 int SAB_CCR0_PU ;
 int SAB_CCR0_SC_NRZ ;
 int SAB_CCR0_SM_ASYNC ;
 int SAB_CCR1 ;
 int SAB_CCR1_BCR ;
 int SAB_CCR1_CM_7 ;
 int SAB_CCR1_ODS ;
 int SAB_CCR2 ;
 int SAB_CCR2_BDF ;
 int SAB_CCR2_SSEL ;
 int SAB_CCR2_TOE ;
 int SAB_CCR3 ;
 int SAB_CCR4 ;
 int SAB_CCR4_EBRG ;
 int SAB_CCR4_ICD ;
 int SAB_CCR4_MCK4 ;
 int SAB_IMR0 ;
 scalar_t__ SAB_IMR0_TCD ;
 int SAB_IMR1 ;
 int SAB_IPC ;
 int SAB_IPC_ICPL ;
 int SAB_ISR0 ;
 int SAB_ISR1 ;
 int SAB_MODE ;
 int SAB_MODE_FCTS ;
 int SAB_MODE_RAC ;
 int SAB_MODE_RTS ;
 int SAB_PCR ;
 int SAB_PIM ;
 int SAB_PVR ;
 int SAB_PVR_DTR_A ;
 int SAB_PVR_DTR_B ;
 int SAB_PVR_MAGIC ;
 int SAB_RFC ;
 int SAB_RFC_DPS ;
 int SAB_RFC_RFDF ;
 int SAB_RFC_RFTH_32CHAR ;
 int UART_FLUSH_RECEIVER ;
 int UART_FLUSH_TRANSMITTER ;
 int sab82532_flush (struct uart_bas*,int) ;
 int sab82532_param (struct uart_bas*,int,int,int,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
sab82532_init(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
 uint8_t ccr0, pvr;

 if (bas->rclk == 0)
  bas->rclk = DEFAULT_RCLK;






 uart_setreg(bas, SAB_PCR,
     ~(SAB_PVR_DTR_A|SAB_PVR_DTR_B|SAB_PVR_MAGIC));
 uart_barrier(bas);

 uart_setreg(bas, SAB_PIM, 0xff);
 uart_barrier(bas);

 uart_setreg(bas, SAB_IPC, SAB_IPC_ICPL);
 uart_barrier(bas);

 pvr = uart_getreg(bas, SAB_PVR);
 switch (bas->chan) {
 case 1:
  pvr &= ~SAB_PVR_DTR_A;
  break;
 case 2:
  pvr &= ~SAB_PVR_DTR_B;
  break;
 }
 uart_setreg(bas, SAB_PVR, pvr | SAB_PVR_MAGIC);
 uart_barrier(bas);


 uart_setreg(bas, SAB_CCR0, 0);
 uart_barrier(bas);


 ccr0 = SAB_CCR0_MCE|SAB_CCR0_SC_NRZ|SAB_CCR0_SM_ASYNC;
 uart_setreg(bas, SAB_CCR0, ccr0);
 uart_barrier(bas);
 uart_setreg(bas, SAB_CCR1, SAB_CCR1_ODS|SAB_CCR1_BCR|SAB_CCR1_CM_7);
 uart_barrier(bas);
 uart_setreg(bas, SAB_CCR2, SAB_CCR2_BDF|SAB_CCR2_SSEL|SAB_CCR2_TOE);
 uart_barrier(bas);
 uart_setreg(bas, SAB_CCR3, 0);
 uart_barrier(bas);
 uart_setreg(bas, SAB_CCR4, SAB_CCR4_MCK4|SAB_CCR4_EBRG|SAB_CCR4_ICD);
 uart_barrier(bas);
 uart_setreg(bas, SAB_MODE, SAB_MODE_FCTS|SAB_MODE_RTS|SAB_MODE_RAC);
 uart_barrier(bas);
 uart_setreg(bas, SAB_RFC, SAB_RFC_DPS|SAB_RFC_RFDF|
     SAB_RFC_RFTH_32CHAR);
 uart_barrier(bas);

 sab82532_param(bas, baudrate, databits, stopbits, parity);


 uart_setreg(bas, SAB_IMR0, (unsigned char)~SAB_IMR0_TCD);
 uart_setreg(bas, SAB_IMR1, 0xff);
 uart_barrier(bas);
 uart_getreg(bas, SAB_ISR0);
 uart_getreg(bas, SAB_ISR1);
 uart_barrier(bas);

 sab82532_flush(bas, UART_FLUSH_TRANSMITTER|UART_FLUSH_RECEIVER);


 uart_setreg(bas, SAB_CCR0, ccr0|SAB_CCR0_PU);
 uart_barrier(bas);
}
