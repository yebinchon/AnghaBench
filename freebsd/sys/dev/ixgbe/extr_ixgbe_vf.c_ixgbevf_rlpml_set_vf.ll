; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbevf_rlpml_set_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbevf_rlpml_set_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_VF_SET_LPE = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@IXGBE_ERR_MBX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbevf_rlpml_set_vf(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @IXGBE_VF_SET_LPE, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %15 = call i64 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw* %12, i32* %13, i32* %14, i32 2)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %3, align 8
  br label %35

20:                                               ; preds = %2
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IXGBE_VF_SET_LPE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @IXGBE_ERR_MBX, align 8
  store i64 %33, i64* %3, align 8
  br label %35

34:                                               ; preds = %26, %20
  store i64 0, i64* %3, align 8
  br label %35

35:                                               ; preds = %34, %32, %18
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i64 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
