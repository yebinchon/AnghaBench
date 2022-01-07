; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_mac_link_sfp_x550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_mac_link_sfp_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_CS4227_LINE_SPARE24_LSB = common dso_local global i32 0, align 4
@IXGBE_CS4227_EDC_MODE_CX1 = common dso_local global i32 0, align 4
@IXGBE_CS4227_EDC_MODE_SR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_setup_mac_link_sfp_x550em(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @UNREFERENCED_1PARAMETER(i32 %13)
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = call i64 @ixgbe_supported_sfp_modules_X550em(%struct.ixgbe_hw* %15, i32* %11)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %21, i64* %4, align 8
  br label %65

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @IXGBE_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %4, align 8
  br label %65

28:                                               ; preds = %22
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ixgbe_setup_kr_speed_x550em(%struct.ixgbe_hw* %29, i32 %30)
  %32 = load i32, i32* @IXGBE_CS4227_LINE_SPARE24_LSB, align 4
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 12
  %38 = add nsw i32 %32, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load i32, i32* @IXGBE_CS4227_EDC_MODE_CX1, align 4
  %43 = shl i32 %42, 1
  %44 = or i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %49

45:                                               ; preds = %28
  %46 = load i32, i32* @IXGBE_CS4227_EDC_MODE_SR, align 4
  %47 = shl i32 %46, 1
  %48 = or i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %51 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %53, align 8
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %56 = bitcast %struct.ixgbe_hw* %55 to %struct.ixgbe_hw.0*
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i64 %54(%struct.ixgbe_hw.0* %56, i32 %60, i32 %61, i32 %62)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %49, %26, %20
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local i32 @UNREFERENCED_1PARAMETER(i32) #1

declare dso_local i64 @ixgbe_supported_sfp_modules_X550em(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @ixgbe_setup_kr_speed_x550em(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
