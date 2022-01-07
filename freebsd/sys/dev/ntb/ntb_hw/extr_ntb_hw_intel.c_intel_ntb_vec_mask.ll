; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_vec_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_vec_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32 }

@NTB_SB01BASE_LOCKUP = common dso_local global i32 0, align 4
@XEON_NONLINK_DB_MSIX_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_softc*, i32)* @intel_ntb_vec_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_vec_mask(%struct.ntb_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ntb_softc* %0, %struct.ntb_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %9 = load i32, i32* @NTB_SB01BASE_LOCKUP, align 4
  %10 = call i64 @HAS_FEATURE(%struct.ntb_softc* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @XEON_NONLINK_DB_MSIX_BITS, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @XEON_NONLINK_DB_MSIX_BITS, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 32764, i32* %3, align 4
  br label %41

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 1, %32
  %34 = sub i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %37, %38
  %40 = shl i32 %36, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %27, %25, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @HAS_FEATURE(%struct.ntb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
