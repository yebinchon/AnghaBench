; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5312_chip.c_ar5312_chip_detect_sys_frequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5312_chip.c_ar5312_chip_detect_sys_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR5312_SYSREG_BASE = common dso_local global i64 0, align 8
@AR5312_SYSREG_CLOCKCTL = common dso_local global i64 0, align 8
@ar531x_soc = common dso_local global i64 0, align 8
@AR531X_SOC_AR5313 = common dso_local global i64 0, align 8
@AR2313_CLOCKCTL_PREDIVIDE = common dso_local global i32 0, align 4
@AR2313_CLOCKCTL_MULTIPLIER = common dso_local global i32 0, align 4
@AR5312_CLOCKCTL_PREDIVIDE = common dso_local global i32 0, align 4
@AR5312_CLOCKCTL_MULTIPLIER = common dso_local global i32 0, align 4
@u_ar531x_cpu_freq = common dso_local global i32 0, align 4
@u_ar531x_ahb_freq = common dso_local global i32 0, align 4
@u_ar531x_ddr_freq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ar5312_chip_detect_sys_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5312_chip_detect_sys_frequency() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %7 = load i64, i64* @AR5312_SYSREG_CLOCKCTL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @ATH_READ_REG(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* @ar531x_soc, align 8
  %11 = load i64, i64* @AR531X_SOC_AR5313, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %0
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @AR2313_CLOCKCTL_PREDIVIDE, align 4
  %16 = call i32 @__SHIFTOUT(i32 %14, i32 %15)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @AR2313_CLOCKCTL_MULTIPLIER, align 4
  %19 = call i32 @__SHIFTOUT(i32 %17, i32 %18)
  store i32 %19, i32* %2, align 4
  br label %27

20:                                               ; preds = %0
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @AR5312_CLOCKCTL_PREDIVIDE, align 4
  %23 = call i32 @__SHIFTOUT(i32 %21, i32 %22)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @AR5312_CLOCKCTL_MULTIPLIER, align 4
  %26 = call i32 @__SHIFTOUT(i32 %24, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %20, %13
  %28 = load i32, i32* %1, align 4
  %29 = mul nsw i32 %28, 4
  %30 = ashr i32 21537, %29
  %31 = and i32 %30, 15
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sdiv i32 40000000, %32
  %34 = load i32, i32* %2, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* @u_ar531x_cpu_freq, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sdiv i32 %37, 4
  store i32 %38, i32* @u_ar531x_ahb_freq, align 4
  store i64 0, i64* @u_ar531x_ddr_freq, align 8
  ret void
}

declare dso_local i32 @ATH_READ_REG(i64) #1

declare dso_local i32 @__SHIFTOUT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
