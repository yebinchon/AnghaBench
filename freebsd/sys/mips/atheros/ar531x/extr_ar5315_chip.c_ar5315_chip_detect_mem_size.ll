; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5315_chip.c_ar5315_chip_detect_mem_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5315_chip.c_ar5315_chip_detect_mem_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR5315_SDRAMCTL_BASE = common dso_local global i64 0, align 8
@AR5315_SDRAMCTL_MEM_CFG = common dso_local global i64 0, align 8
@AR5315_MEM_CFG_COL_WIDTH = common dso_local global i32 0, align 4
@AR5315_MEM_CFG_ROW_WIDTH = common dso_local global i32 0, align 4
@AR5315_MEM_CFG_DATA_WIDTH = common dso_local global i32 0, align 4
@realmem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ar5315_chip_detect_mem_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5315_chip_detect_mem_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i64, i64* @AR5315_SDRAMCTL_BASE, align 8
  %7 = load i64, i64* @AR5315_SDRAMCTL_MEM_CFG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @ATH_READ_REG(i64 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @AR5315_MEM_CFG_COL_WIDTH, align 4
  %12 = call i32 @__SHIFTOUT(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @AR5315_MEM_CFG_ROW_WIDTH, align 4
  %17 = call i32 @__SHIFTOUT(i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @AR5315_MEM_CFG_DATA_WIDTH, align 4
  %22 = call i32 @__SHIFTOUT(i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %25, 8
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 1, %29
  %31 = mul nsw i32 %28, %30
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %31, %32
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  store i32 %34, i32* @realmem, align 4
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
