; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5315_chip.c_ar5315_chip_device_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5315_chip.c_ar5315_chip_device_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR5315_SYSREG_BASE = common dso_local global i64 0, align 8
@AR5315_SYSREG_AHB_ERR0 = common dso_local global i64 0, align 8
@AR5315_AHB_ERROR_DET = common dso_local global i32 0, align 4
@AR5315_SYSREG_AHB_ERR1 = common dso_local global i64 0, align 8
@AR5315_SYSREG_WDOG_CTL = common dso_local global i64 0, align 8
@AR5315_WDOG_CTL_IGNORE = common dso_local global i32 0, align 4
@AR5315_SYSREG_AHB_ARB_CTL = common dso_local global i64 0, align 8
@AR5315_ARB_ENET = common dso_local global i32 0, align 4
@AR5315_SYSREG_GPIO_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"AHB Master Arbitration Control %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Byteswap Control %08x\0A\00", align 1
@AR5315_SYSREG_ENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ar5315_chip_device_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5315_chip_device_start() #0 {
  %1 = load i64, i64* @AR5315_SYSREG_BASE, align 8
  %2 = load i64, i64* @AR5315_SYSREG_AHB_ERR0, align 8
  %3 = add nsw i64 %1, %2
  %4 = load i32, i32* @AR5315_AHB_ERROR_DET, align 4
  %5 = call i32 @ATH_WRITE_REG(i64 %3, i32 %4)
  %6 = load i64, i64* @AR5315_SYSREG_BASE, align 8
  %7 = load i64, i64* @AR5315_SYSREG_AHB_ERR1, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @ATH_READ_REG(i64 %8)
  %10 = load i64, i64* @AR5315_SYSREG_BASE, align 8
  %11 = load i64, i64* @AR5315_SYSREG_WDOG_CTL, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* @AR5315_WDOG_CTL_IGNORE, align 4
  %14 = call i32 @ATH_WRITE_REG(i64 %12, i32 %13)
  %15 = load i64, i64* @AR5315_SYSREG_BASE, align 8
  %16 = load i64, i64* @AR5315_SYSREG_AHB_ARB_CTL, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @AR5315_SYSREG_BASE, align 8
  %19 = load i64, i64* @AR5315_SYSREG_AHB_ARB_CTL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @ATH_READ_REG(i64 %20)
  %22 = load i32, i32* @AR5315_ARB_ENET, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @ATH_WRITE_REG(i64 %17, i32 %23)
  %25 = load i64, i64* @AR5315_SYSREG_BASE, align 8
  %26 = load i64, i64* @AR5315_SYSREG_GPIO_INT, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @ATH_WRITE_REG(i64 %27, i32 0)
  %29 = load i64, i64* @AR5315_SYSREG_BASE, align 8
  %30 = load i64, i64* @AR5315_SYSREG_AHB_ARB_CTL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @ATH_READ_REG(i64 %31)
  %33 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* @AR5315_SYSREG_BASE, align 8
  %35 = load i64, i64* @AR5315_SYSREG_ENDIAN, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @ATH_READ_REG(i64 %36)
  %38 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  ret void
}

declare dso_local i32 @ATH_WRITE_REG(i64, i32) #1

declare dso_local i32 @ATH_READ_REG(i64) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
