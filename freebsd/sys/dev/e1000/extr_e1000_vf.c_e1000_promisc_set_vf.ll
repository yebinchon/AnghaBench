; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_vf.c_e1000_promisc_set_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_vf.c_e1000_promisc_set_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32*, i32, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_VF_SET_PROMISC = common dso_local global i32 0, align 4
@E1000_VF_SET_PROMISC_MULTICAST = common dso_local global i32 0, align 4
@E1000_VF_SET_PROMISC_UNICAST = common dso_local global i32 0, align 4
@E1000_ERR_MAC_INIT = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_promisc_set_vf(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_mbx_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_mbx_info* %10, %struct.e1000_mbx_info** %6, align 8
  %11 = load i32, i32* @E1000_VF_SET_PROMISC, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %26 [
    i32 129, label %13
    i32 130, label %17
    i32 128, label %21
    i32 131, label %25
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @E1000_VF_SET_PROMISC_MULTICAST, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load i32, i32* @E1000_VF_SET_PROMISC_MULTICAST, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %2, %17
  %22 = load i32, i32* @E1000_VF_SET_PROMISC_UNICAST, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %2, %21
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @E1000_ERR_MAC_INIT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %60

29:                                               ; preds = %25, %13
  %30 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %6, align 8
  %31 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32 (%struct.e1000_hw.1*, i32*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32*, i32, i32)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.1*
  %36 = call i32 %33(%struct.e1000_hw.1* %35, i32* %7, i32 1, i32 0)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %29
  %40 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %6, align 8
  %41 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.e1000_hw.0*, i32*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32*, i32, i32)** %42, align 8
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %45 = bitcast %struct.e1000_hw* %44 to %struct.e1000_hw.0*
  %46 = call i32 %43(%struct.e1000_hw.0* %45, i32* %7, i32 1, i32 0)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %39, %29
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @E1000_VT_MSGTYPE_ACK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @E1000_ERR_MAC_INIT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %50, %47
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %26
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
