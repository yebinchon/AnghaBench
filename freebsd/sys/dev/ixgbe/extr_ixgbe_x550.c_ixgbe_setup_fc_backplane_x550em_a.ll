; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_fc_backplane_x550em_a.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_fc_backplane_x550em_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_5__ = type { i32, i64 }

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"ixgbe_setup_fc_backplane_x550em_a\00", align 1
@IXGBE_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ixgbe_fc_rx_pause not valid in strict IEEE mode\0A\00", align 1
@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i64 0, align 8
@ixgbe_fc_default = common dso_local global i32 0, align 4
@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Auto-Negotiation did not complete\0A\00", align 1
@IXGBE_KRM_AN_CNTL_1_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_KRM_AN_CNTL_1_ASM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_setup_fc_backplane_x550em_a(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %6 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %6, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 129
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @IXGBE_ERROR_UNSUPPORTED, align 4
  %21 = call i32 @ERROR_REPORT1(i32 %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 8
  store i64 %22, i64* %2, align 8
  br label %104

23:                                               ; preds = %13, %1
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ixgbe_fc_default, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 131, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %38, align 8
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = bitcast %struct.ixgbe_hw* %40 to %struct.ixgbe_hw.0*
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @IXGBE_KRM_AN_CNTL_1(i32 %45)
  %47 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %48 = call i64 %39(%struct.ixgbe_hw.0* %41, i32 %46, i32 %47, i32* %5)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @IXGBE_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %34
  %53 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i64, i64* %4, align 8
  store i64 %54, i64* %2, align 8
  br label %104

55:                                               ; preds = %34
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %81 [
    i32 130, label %60
    i32 128, label %67
    i32 129, label %75
    i32 131, label %75
  ]

60:                                               ; preds = %55
  %61 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_SYM_PAUSE, align 4
  %62 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_ASM_PAUSE, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %85

67:                                               ; preds = %55
  %68 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_ASM_PAUSE, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_SYM_PAUSE, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %85

75:                                               ; preds = %55, %55
  %76 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_SYM_PAUSE, align 4
  %77 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_ASM_PAUSE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %85

81:                                               ; preds = %55
  %82 = load i32, i32* @IXGBE_ERROR_ARGUMENT, align 4
  %83 = call i32 @ERROR_REPORT1(i32 %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i64, i64* @IXGBE_ERR_CONFIG, align 8
  store i64 %84, i64* %2, align 8
  br label %104

85:                                               ; preds = %75, %67, %60
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %89, align 8
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %92 = bitcast %struct.ixgbe_hw* %91 to %struct.ixgbe_hw.1*
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %94 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @IXGBE_KRM_AN_CNTL_1(i32 %96)
  %98 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i64 %90(%struct.ixgbe_hw.1* %92, i32 %97, i32 %98, i32 %99)
  store i64 %100, i64* %4, align 8
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %102 = call i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw* %101)
  store i64 %102, i64* %4, align 8
  %103 = load i64, i64* %4, align 8
  store i64 %103, i64* %2, align 8
  br label %104

104:                                              ; preds = %85, %81, %52, %19
  %105 = load i64, i64* %2, align 8
  ret i64 %105
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

declare dso_local i32 @IXGBE_KRM_AN_CNTL_1(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
