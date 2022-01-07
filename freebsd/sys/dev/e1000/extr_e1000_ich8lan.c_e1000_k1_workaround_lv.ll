; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_k1_workaround_lv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_k1_workaround_lv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"e1000_k1_workaround_lv\00", align 1
@e1000_pch2lan = common dso_local global i64 0, align 8
@HV_M_STATUS = common dso_local global i32 0, align 4
@HV_M_STATUS_LINK_UP = common dso_local global i32 0, align 4
@HV_M_STATUS_AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@HV_M_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@HV_M_STATUS_SPEED_100 = common dso_local global i32 0, align 4
@HV_PM_CTRL = common dso_local global i32 0, align 4
@HV_PM_CTRL_K1_ENABLE = common dso_local global i32 0, align 4
@E1000_FEXTNVM4 = common dso_local global i32 0, align 4
@E1000_FEXTNVM4_BEACON_DURATION_MASK = common dso_local global i32 0, align 4
@E1000_FEXTNVM4_BEACON_DURATION_16USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_k1_workaround_lv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_k1_workaround_lv(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_pch2lan, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %17, i64* %2, align 8
  br label %101

18:                                               ; preds = %1
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %22, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = bitcast %struct.e1000_hw* %24 to %struct.e1000_hw.1*
  %26 = load i32, i32* @HV_M_STATUS, align 4
  %27 = call i64 %23(%struct.e1000_hw.1* %25, i32 %26, i32* %5)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* %2, align 8
  br label %101

32:                                               ; preds = %18
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @HV_M_STATUS_LINK_UP, align 4
  %35 = load i32, i32* @HV_M_STATUS_AUTONEG_COMPLETE, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = load i32, i32* @HV_M_STATUS_LINK_UP, align 4
  %39 = load i32, i32* @HV_M_STATUS_AUTONEG_COMPLETE, align 4
  %40 = or i32 %38, %39
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %99

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @HV_M_STATUS_SPEED_1000, align 4
  %45 = load i32, i32* @HV_M_STATUS_SPEED_100, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %42
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %53, align 8
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = bitcast %struct.e1000_hw* %55 to %struct.e1000_hw.1*
  %57 = load i32, i32* @HV_PM_CTRL, align 4
  %58 = call i64 %54(%struct.e1000_hw.1* %56, i32 %57, i32* %6)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i64, i64* %4, align 8
  store i64 %62, i64* %2, align 8
  br label %101

63:                                               ; preds = %49
  %64 = load i32, i32* @HV_PM_CTRL_K1_ENABLE, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %71, align 8
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = bitcast %struct.e1000_hw* %73 to %struct.e1000_hw.0*
  %75 = load i32, i32* @HV_PM_CTRL, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i64 %72(%struct.e1000_hw.0* %74, i32 %75, i32 %76)
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %4, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %63
  %81 = load i64, i64* %4, align 8
  store i64 %81, i64* %2, align 8
  br label %101

82:                                               ; preds = %63
  br label %98

83:                                               ; preds = %42
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = load i32, i32* @E1000_FEXTNVM4, align 4
  %86 = call i32 @E1000_READ_REG(%struct.e1000_hw* %84, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @E1000_FEXTNVM4_BEACON_DURATION_MASK, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* @E1000_FEXTNVM4_BEACON_DURATION_16USEC, align 4
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = load i32, i32* @E1000_FEXTNVM4, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %83, %82
  br label %99

99:                                               ; preds = %98, %32
  %100 = load i64, i64* %4, align 8
  store i64 %100, i64* %2, align 8
  br label %101

101:                                              ; preds = %99, %80, %61, %30, %16
  %102 = load i64, i64* %2, align 8
  ret i64 %102
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
