; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_apb.c_apb_mask_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_apb.c_apb_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ar531x_soc = common dso_local global i64 0, align 8
@AR531X_SOC_AR5315 = common dso_local global i64 0, align 8
@AR5315_SYSREG_BASE = common dso_local global i64 0, align 8
@AR5315_SYSREG_MISC_INTMASK = common dso_local global i64 0, align 8
@AR5312_SYSREG_BASE = common dso_local global i64 0, align 8
@AR5312_SYSREG_MISC_INTMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @apb_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apb_mask_irq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load i64, i64* @ar531x_soc, align 8
  %8 = load i64, i64* @AR531X_SOC_AR5315, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load i64, i64* @AR5315_SYSREG_BASE, align 8
  %12 = load i64, i64* @AR5315_SYSREG_MISC_INTMASK, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @ATH_READ_REG(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i64, i64* @AR5315_SYSREG_BASE, align 8
  %16 = load i64, i64* @AR5315_SYSREG_MISC_INTMASK, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 1, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  %23 = call i32 @ATH_WRITE_REG(i64 %17, i32 %22)
  br label %38

24:                                               ; preds = %1
  %25 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %26 = load i64, i64* @AR5312_SYSREG_MISC_INTMASK, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @ATH_READ_REG(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %30 = load i64, i64* @AR5312_SYSREG_MISC_INTMASK, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %32, %35
  %37 = call i32 @ATH_WRITE_REG(i64 %31, i32 %36)
  br label %38

38:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @ATH_READ_REG(i64) #1

declare dso_local i32 @ATH_WRITE_REG(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
