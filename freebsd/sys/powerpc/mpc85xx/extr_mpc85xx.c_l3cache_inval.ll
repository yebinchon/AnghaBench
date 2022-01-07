; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx.c_l3cache_inval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx.c_l3cache_inval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCP85XX_CPC_CSR0 = common dso_local global i32 0, align 4
@OCP85XX_CPC_CSR0_FI = common dso_local global i32 0, align 4
@OCP85XX_CPC_CSR0_LFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @l3cache_inval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3cache_inval() #0 {
  %1 = load i32, i32* @OCP85XX_CPC_CSR0, align 4
  %2 = load i32, i32* @OCP85XX_CPC_CSR0_FI, align 4
  %3 = load i32, i32* @OCP85XX_CPC_CSR0_LFC, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @ccsr_write4(i32 %1, i32 %4)
  br label %6

6:                                                ; preds = %14, %0
  %7 = load i32, i32* @OCP85XX_CPC_CSR0, align 4
  %8 = call i32 @ccsr_read4(i32 %7)
  %9 = load i32, i32* @OCP85XX_CPC_CSR0_FI, align 4
  %10 = load i32, i32* @OCP85XX_CPC_CSR0_LFC, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  br label %6

15:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ccsr_write4(i32, i32) #1

declare dso_local i32 @ccsr_read4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
