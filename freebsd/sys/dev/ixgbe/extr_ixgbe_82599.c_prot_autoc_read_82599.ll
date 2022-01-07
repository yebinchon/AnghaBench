; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_prot_autoc_read_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_prot_autoc_read_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32)* }
%struct.ixgbe_hw.0 = type opaque

@FALSE = common dso_local global i32 0, align 4
@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @prot_autoc_read_82599(%struct.ixgbe_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @FALSE, align 4
  %10 = load i32*, i32** %6, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %12 = call i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %18, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = bitcast %struct.ixgbe_hw* %20 to %struct.ixgbe_hw.0*
  %22 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %23 = call i64 %19(%struct.ixgbe_hw.0* %21, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @IXGBE_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %28, i64* %4, align 8
  br label %38

29:                                               ; preds = %14
  %30 = load i32, i32* @TRUE, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %34 = load i32, i32* @IXGBE_AUTOC, align 4
  %35 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %33, i32 %34)
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
