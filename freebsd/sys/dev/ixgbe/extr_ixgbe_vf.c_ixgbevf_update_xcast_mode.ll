; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbevf_update_xcast_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbevf_update_xcast_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBEVF_XCAST_MODE_ALLMULTI = common dso_local global i32 0, align 4
@IXGBE_ERR_FEATURE_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_VF_UPDATE_XCAST_MODE = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbevf_update_xcast_mode(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %19 [
    i32 129, label %11
    i32 128, label %18
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IXGBEVF_XCAST_MODE_ALLMULTI, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i64, i64* @IXGBE_ERR_FEATURE_NOT_SUPPORTED, align 8
  store i64 %16, i64* %3, align 8
  br label %50

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %2, %17
  br label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @IXGBE_ERR_FEATURE_NOT_SUPPORTED, align 8
  store i64 %20, i64* %3, align 8
  br label %50

21:                                               ; preds = %18
  %22 = load i32, i32* @IXGBE_VF_UPDATE_XCAST_MODE, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %29 = call i64 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw* %26, i32* %27, i32* %28, i32 2)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %3, align 8
  br label %50

34:                                               ; preds = %21
  %35 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %36 = xor i32 %35, -1
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IXGBE_VF_UPDATE_XCAST_MODE, align 4
  %43 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %44 = or i32 %42, %43
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i64, i64* @IXGBE_ERR_FEATURE_NOT_SUPPORTED, align 8
  store i64 %47, i64* %3, align 8
  br label %50

48:                                               ; preds = %34
  %49 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %48, %46, %32, %19, %15
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i64 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
