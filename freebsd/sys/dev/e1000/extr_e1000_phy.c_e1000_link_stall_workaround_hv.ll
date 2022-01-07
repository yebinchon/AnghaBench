; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_link_stall_workaround_hv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_link_stall_workaround_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"e1000_link_stall_workaround_hv\00", align 1
@e1000_phy_82578 = common dso_local global i64 0, align 8
@PHY_CONTROL = common dso_local global i32 0, align 4
@PHY_CONTROL_LB = common dso_local global i32 0, align 4
@BM_CS_STATUS = common dso_local global i32 0, align 4
@BM_CS_STATUS_LINK_UP = common dso_local global i32 0, align 4
@BM_CS_STATUS_RESOLVED = common dso_local global i32 0, align 4
@BM_CS_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@BM_CS_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@HV_MUX_DATA_CTRL = common dso_local global i32 0, align 4
@HV_MUX_DATA_CTRL_GEN_TO_MAC = common dso_local global i32 0, align 4
@HV_MUX_DATA_CTRL_FORCE_SPEED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_link_stall_workaround_hv(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %6, i64* %4, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_phy_82578, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %15, i64* %2, align 8
  br label %92

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %20, align 8
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = bitcast %struct.e1000_hw* %22 to %struct.e1000_hw.1*
  %24 = load i32, i32* @PHY_CONTROL, align 4
  %25 = call i64 %21(%struct.e1000_hw.1* %23, i32 %24, i32* %5)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PHY_CONTROL_LB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %31, i64* %2, align 8
  br label %92

32:                                               ; preds = %16
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %36, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = bitcast %struct.e1000_hw* %38 to %struct.e1000_hw.1*
  %40 = load i32, i32* @BM_CS_STATUS, align 4
  %41 = call i64 %37(%struct.e1000_hw.1* %39, i32 %40, i32* %5)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i64, i64* %4, align 8
  store i64 %45, i64* %2, align 8
  br label %92

46:                                               ; preds = %32
  %47 = load i32, i32* @BM_CS_STATUS_LINK_UP, align 4
  %48 = load i32, i32* @BM_CS_STATUS_RESOLVED, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @BM_CS_STATUS_SPEED_MASK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @BM_CS_STATUS_LINK_UP, align 4
  %56 = load i32, i32* @BM_CS_STATUS_RESOLVED, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @BM_CS_STATUS_SPEED_1000, align 4
  %59 = or i32 %57, %58
  %60 = icmp ne i32 %54, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %62, i64* %2, align 8
  br label %92

63:                                               ; preds = %46
  %64 = call i32 @msec_delay(i32 200)
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %68, align 8
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = bitcast %struct.e1000_hw* %70 to %struct.e1000_hw.0*
  %72 = load i32, i32* @HV_MUX_DATA_CTRL, align 4
  %73 = load i32, i32* @HV_MUX_DATA_CTRL_GEN_TO_MAC, align 4
  %74 = load i32, i32* @HV_MUX_DATA_CTRL_FORCE_SPEED, align 4
  %75 = or i32 %73, %74
  %76 = call i64 %69(%struct.e1000_hw.0* %71, i32 %72, i32 %75)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = load i64, i64* %4, align 8
  store i64 %80, i64* %2, align 8
  br label %92

81:                                               ; preds = %63
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %85, align 8
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %88 = bitcast %struct.e1000_hw* %87 to %struct.e1000_hw.0*
  %89 = load i32, i32* @HV_MUX_DATA_CTRL, align 4
  %90 = load i32, i32* @HV_MUX_DATA_CTRL_GEN_TO_MAC, align 4
  %91 = call i64 %86(%struct.e1000_hw.0* %88, i32 %89, i32 %90)
  store i64 %91, i64* %2, align 8
  br label %92

92:                                               ; preds = %81, %79, %61, %44, %30, %14
  %93 = load i64, i64* %2, align 8
  ret i64 %93
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
