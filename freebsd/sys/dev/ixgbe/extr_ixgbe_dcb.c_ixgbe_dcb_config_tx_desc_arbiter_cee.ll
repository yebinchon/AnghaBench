; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_config_tx_desc_arbiter_cee.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_config_tx_desc_arbiter_cee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_dcb_config = type { i32 }

@IXGBE_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@IXGBE_DCB_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IXGBE_DCB_TX_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_config_tx_desc_arbiter_cee(%struct.ixgbe_hw* %0, %struct.ixgbe_dcb_config* %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_dcb_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store %struct.ixgbe_dcb_config* %1, %struct.ixgbe_dcb_config** %4, align 8
  %11 = load i32, i32* @IXGBE_NOT_IMPLEMENTED, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = load i32, i32* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = load i32, i32* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %26 = load i32, i32* @IXGBE_DCB_TX_CONFIG, align 4
  %27 = call i32 @ixgbe_dcb_unpack_refill_cee(%struct.ixgbe_dcb_config* %25, i32 %26, i32* %21)
  %28 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %29 = call i32 @ixgbe_dcb_unpack_max_cee(%struct.ixgbe_dcb_config* %28, i32* %24)
  %30 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %31 = load i32, i32* @IXGBE_DCB_TX_CONFIG, align 4
  %32 = call i32 @ixgbe_dcb_unpack_bwgid_cee(%struct.ixgbe_dcb_config* %30, i32 %31, i32* %18)
  %33 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %34 = load i32, i32* @IXGBE_DCB_TX_CONFIG, align 4
  %35 = call i32 @ixgbe_dcb_unpack_tsa_cee(%struct.ixgbe_dcb_config* %33, i32 %34, i32* %15)
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %46 [
    i32 133, label %40
    i32 132, label %43
    i32 131, label %43
    i32 130, label %43
    i32 128, label %43
    i32 129, label %43
  ]

40:                                               ; preds = %2
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = call i32 @ixgbe_dcb_config_tx_desc_arbiter_82598(%struct.ixgbe_hw* %41, i32* %21, i32* %24, i32* %18, i32* %15)
  store i32 %42, i32* %5, align 4
  br label %47

43:                                               ; preds = %2, %2, %2, %2, %2
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %45 = call i32 @ixgbe_dcb_config_tx_desc_arbiter_82599(%struct.ixgbe_hw* %44, i32* %21, i32* %24, i32* %18, i32* %15)
  store i32 %45, i32* %5, align 4
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %43, %40
  %48 = load i32, i32* %5, align 4
  %49 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ixgbe_dcb_unpack_refill_cee(%struct.ixgbe_dcb_config*, i32, i32*) #2

declare dso_local i32 @ixgbe_dcb_unpack_max_cee(%struct.ixgbe_dcb_config*, i32*) #2

declare dso_local i32 @ixgbe_dcb_unpack_bwgid_cee(%struct.ixgbe_dcb_config*, i32, i32*) #2

declare dso_local i32 @ixgbe_dcb_unpack_tsa_cee(%struct.ixgbe_dcb_config*, i32, i32*) #2

declare dso_local i32 @ixgbe_dcb_config_tx_desc_arbiter_82598(%struct.ixgbe_hw*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @ixgbe_dcb_config_tx_desc_arbiter_82599(%struct.ixgbe_hw*, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
