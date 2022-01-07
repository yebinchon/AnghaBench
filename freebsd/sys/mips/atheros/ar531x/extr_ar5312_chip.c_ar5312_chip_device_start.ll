; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5312_chip.c_ar5312_chip_device_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5312_chip.c_ar5312_chip_device_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR5312_SDRAMCTL_BASE = common dso_local global i64 0, align 8
@AR5312_SDRAMCTL_MEM_CFG0 = common dso_local global i64 0, align 8
@AR5312_SDRAMCTL_MEM_CFG1 = common dso_local global i64 0, align 8
@AR5312_MEM_CFG1_BANK0 = common dso_local global i32 0, align 4
@AR5312_MEM_CFG1_BANK1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SDRMCTL %x %x %x %x\0A\00", align 1
@AR5312_SYSREG_BASE = common dso_local global i64 0, align 8
@AR5312_SYSREG_AHBPERR = common dso_local global i64 0, align 8
@AR5312_SYSREG_AHBDMAE = common dso_local global i64 0, align 8
@AR5312_SYSREG_ENABLE = common dso_local global i64 0, align 8
@AR5312_ENABLE_ENET0 = common dso_local global i32 0, align 4
@AR5312_ENABLE_ENET1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ar5312_chip_device_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5312_chip_device_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i64, i64* @AR5312_SDRAMCTL_BASE, align 8
  %8 = load i64, i64* @AR5312_SDRAMCTL_MEM_CFG0, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @ATH_READ_REG(i64 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i64, i64* @AR5312_SDRAMCTL_BASE, align 8
  %12 = load i64, i64* @AR5312_SDRAMCTL_MEM_CFG1, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @ATH_READ_REG(i64 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @AR5312_MEM_CFG1_BANK0, align 4
  %17 = call i32 @__SHIFTOUT(i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @AR5312_MEM_CFG1_BANK1, align 4
  %20 = call i32 @__SHIFTOUT(i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %0
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  %26 = shl i32 1, %25
  br label %28

27:                                               ; preds = %0
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 0, %27 ]
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  %35 = shl i32 1, %34
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 0, %36 ]
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 %39, 20
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = shl i32 %41, 20
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %49 = load i64, i64* @AR5312_SYSREG_AHBPERR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @ATH_READ_REG(i64 %50)
  %52 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %53 = load i64, i64* @AR5312_SYSREG_AHBDMAE, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @ATH_READ_REG(i64 %54)
  %56 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %57 = load i64, i64* @AR5312_SYSREG_ENABLE, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @ATH_WRITE_REG(i64 %58, i32 0)
  %60 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %61 = load i64, i64* @AR5312_SYSREG_ENABLE, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %64 = load i64, i64* @AR5312_SYSREG_ENABLE, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @ATH_READ_REG(i64 %65)
  %67 = load i32, i32* @AR5312_ENABLE_ENET0, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @AR5312_ENABLE_ENET1, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @ATH_WRITE_REG(i64 %62, i32 %70)
  ret void
}

declare dso_local i32 @ATH_READ_REG(i64) #1

declare dso_local i32 @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ATH_WRITE_REG(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
