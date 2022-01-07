; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_set_rar_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbe_set_rar_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_VF_SET_MAC_ADDR = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@IXGBE_ERR_MBX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_set_rar_vf(%struct.ixgbe_hw* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  store i32* %15, i32** %13, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @UNREFERENCED_3PARAMETER(i32 %16, i32 %17, i32 %18)
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %21 = call i32 @memset(i32* %20, i32 0, i32 12)
  %22 = load i32, i32* @IXGBE_VF_SET_MAC_ADDR, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %13, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @memcpy(i32* %24, i32* %25, i32 6)
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %30 = call i32 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw* %27, i32* %28, i32* %29, i32 3)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %32 = xor i32 %31, -1
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %5
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IXGBE_VF_SET_MAC_ADDR, align 4
  %42 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %43 = or i32 %41, %42
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ixgbe_get_mac_addr_vf(%struct.ixgbe_hw* %46, i32 %50)
  %52 = load i32, i32* @IXGBE_ERR_MBX, align 4
  store i32 %52, i32* %6, align 4
  br label %55

53:                                               ; preds = %38, %5
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %45
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @UNREFERENCED_3PARAMETER(i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw*, i32*, i32*, i32) #1

declare dso_local i32 @ixgbe_get_mac_addr_vf(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
