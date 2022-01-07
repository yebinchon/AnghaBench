; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5312_chip.c_ar5312_chip_detect_mem_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5312_chip.c_ar5312_chip_detect_mem_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR5312_SDRAMCTL_BASE = common dso_local global i64 0, align 8
@AR5312_SDRAMCTL_MEM_CFG1 = common dso_local global i64 0, align 8
@AR5312_MEM_CFG1_BANK0 = common dso_local global i32 0, align 4
@AR5312_MEM_CFG1_BANK1 = common dso_local global i32 0, align 4
@realmem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ar5312_chip_detect_mem_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5312_chip_detect_mem_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @AR5312_SDRAMCTL_BASE, align 8
  %6 = load i64, i64* @AR5312_SDRAMCTL_MEM_CFG1, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @ATH_READ_REG(i64 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @AR5312_MEM_CFG1_BANK0, align 4
  %11 = call i32 @__SHIFTOUT(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @AR5312_MEM_CFG1_BANK1, align 4
  %14 = call i32 @__SHIFTOUT(i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  %20 = shl i32 1, %19
  br label %22

21:                                               ; preds = %0
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 0, %21 ]
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  %29 = shl i32 1, %28
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  %33 = add nsw i32 %23, %32
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = shl i32 %34, 20
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  store i32 %36, i32* @realmem, align 4
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
