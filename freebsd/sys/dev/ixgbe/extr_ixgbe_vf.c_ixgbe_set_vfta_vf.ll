; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_set_vfta_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_set_vfta_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_VF_SET_VLAN = common dso_local global i32 0, align 4
@IXGBE_VT_MSGINFO_SHIFT = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_ACK = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_set_vfta_vf(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @UNREFERENCED_2PARAMETER(i32 %14, i32 %15)
  %17 = load i32, i32* @IXGBE_VF_SET_VLAN, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @IXGBE_VT_MSGINFO_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %30 = call i32 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw* %27, i32* %28, i32* %29, i32 2)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %5
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %40, i32* %6, align 4
  br label %48

41:                                               ; preds = %33, %5
  %42 = load i32, i32* %13, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %46 = and i32 %44, %45
  %47 = or i32 %42, %46
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %41, %39
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @UNREFERENCED_2PARAMETER(i32, i32) #1

declare dso_local i32 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
