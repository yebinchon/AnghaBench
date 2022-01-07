; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbevf_write_msg_read_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_vf.c_ixgbevf_write_msg_read_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mbx_info }
%struct.ixgbe_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.ixgbe_hw.0*, i32*, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*, i32*, i32)* @ixgbevf_write_msg_read_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ixgbe_mbx_info*, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  store %struct.ixgbe_mbx_info* %13, %struct.ixgbe_mbx_info** %10, align 8
  %14 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %10, align 8
  %15 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64 (%struct.ixgbe_hw.1*, i32*, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32*, i32, i32)** %16, align 8
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %19 = bitcast %struct.ixgbe_hw* %18 to %struct.ixgbe_hw.1*
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 %17(%struct.ixgbe_hw.1* %19, i32* %20, i32 %21, i32 0)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %5, align 8
  br label %37

27:                                               ; preds = %4
  %28 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %10, align 8
  %29 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64 (%struct.ixgbe_hw.0*, i32*, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32*, i32, i32)** %30, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %33 = bitcast %struct.ixgbe_hw* %32 to %struct.ixgbe_hw.0*
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i64 %31(%struct.ixgbe_hw.0* %33, i32* %34, i32 %35, i32 0)
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %27, %25
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
