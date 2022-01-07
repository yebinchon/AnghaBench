
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int uintmax_t ;
typedef int uint16_t ;
typedef int u_register_t ;
typedef int u_long ;
typedef int u_int ;
struct TYPE_4__ {scalar_t__ esr; } ;
struct TYPE_5__ {int dsisr; } ;
struct TYPE_6__ {TYPE_1__ booke; TYPE_2__ aim; } ;
struct trapframe {TYPE_3__ cpu; } ;


 int ESR_BITMASK ;




 int MCSR_BITMASK ;
 int MPC745X_P (int) ;
 int MSSSR_BITMASK ;
 int SPR_MCAR ;
 int SPR_MCARU ;
 int SPR_MCSR ;
 int SPR_MSSSR0 ;
 int mfpvr () ;
 int mfspr (int ) ;
 int printf (char*,int,...) ;

__attribute__((used)) static void
cpu_printtrap(u_int vector, struct trapframe *frame, int isfatal, int user)
{
}
