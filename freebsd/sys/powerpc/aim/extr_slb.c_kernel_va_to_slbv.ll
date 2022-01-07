; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_kernel_va_to_slbv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_kernel_va_to_slbv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_SR_SHFT = common dso_local global i64 0, align 8
@SLBV_VSID_SHIFT = common dso_local global i32 0, align 4
@hw_direct_map = common dso_local global i64 0, align 8
@DMAP_BASE_ADDRESS = common dso_local global i64 0, align 8
@DMAP_MAX_ADDRESS = common dso_local global i64 0, align 8
@SLBV_L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_va_to_slbv(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @ADDR_SR_SHFT, align 8
  %6 = lshr i64 %4, %5
  %7 = call i32 @KERNEL_VSID(i64 %6)
  %8 = load i32, i32* @SLBV_VSID_SHIFT, align 4
  %9 = shl i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* @hw_direct_map, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @DMAP_BASE_ADDRESS, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @DMAP_MAX_ADDRESS, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @DMAP_TO_PHYS(i64 %21)
  %23 = call i64 @mem_valid(i32 %22, i32 0)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @SLBV_L, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %29, %16, %12, %1
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @KERNEL_VSID(i64) #1

declare dso_local i64 @mem_valid(i32, i32) #1

declare dso_local i32 @DMAP_TO_PHYS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
