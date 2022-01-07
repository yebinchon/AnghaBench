; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_vf.c_e1000_check_for_link_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_vf.c_e1000_check_for_link_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info, %struct.e1000_mbx_info }
%struct.e1000_mac_info = type { i64 }
%struct.e1000_mbx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"e1000_check_for_link_vf\00", align 1
@TRUE = common dso_local global i64 0, align 8
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@E1000_ERR_MAC_INIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_check_for_link_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_check_for_link_vf(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mbx_info*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_mbx_info* %8, %struct.e1000_mbx_info** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_mac_info* %10, %struct.e1000_mac_info** %4, align 8
  %11 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32 (%struct.e1000_hw.1*, i32)*, i32 (%struct.e1000_hw.1*, i32)** %15, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = bitcast %struct.e1000_hw* %17 to %struct.e1000_hw.1*
  %19 = call i32 %16(%struct.e1000_hw.1* %18, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %1
  %27 = load i64, i64* @TRUE, align 8
  %28 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %29 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %80

36:                                               ; preds = %30
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = load i32, i32* @E1000_STATUS, align 4
  %39 = call i32 @E1000_READ_REG(%struct.e1000_hw* %37, i32 %38)
  %40 = load i32, i32* @E1000_STATUS_LU, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %80

44:                                               ; preds = %36
  %45 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64 (%struct.e1000_hw.0*, i32*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32*, i32, i32)** %47, align 8
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %50 = bitcast %struct.e1000_hw* %49 to %struct.e1000_hw.0*
  %51 = call i64 %48(%struct.e1000_hw.0* %50, i32* %6, i32 1, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %80

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @E1000_VT_MSGTYPE_CTS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @E1000_VT_MSGTYPE_NACK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @E1000_ERR_MAC_INIT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %59
  br label %80

68:                                               ; preds = %54
  %69 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %70 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @E1000_ERR_MAC_INIT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %80

76:                                               ; preds = %68
  %77 = load i64, i64* @FALSE, align 8
  %78 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %79 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %73, %67, %53, %43, %35
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
