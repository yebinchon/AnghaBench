; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_fc_X550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_fc_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i8*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ixgbe_setup_fc_X550em\00", align 1
@IXGBE_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ixgbe_fc_rx_pause not valid in strict IEEE mode\0A\00", align 1
@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i32 0, align 4
@ixgbe_fc_default = common dso_local global i32 0, align 4
@IXGBE_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@IXGBE_KRM_AN_CNTL_1_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_KRM_AN_CNTL_1_ASM_PAUSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_setup_fc_X550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %7, i32* %3, align 4
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 129
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @IXGBE_ERROR_UNSUPPORTED, align 4
  %22 = call i32 @ERROR_REPORT1(i32 %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 4
  store i32 %23, i32* %3, align 4
  br label %117

24:                                               ; preds = %14, %1
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ixgbe_fc_default, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 131, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %43 [
    i32 130, label %40
    i32 128, label %41
    i32 129, label %42
    i32 131, label %42
  ]

40:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %47

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %47

42:                                               ; preds = %35, %35
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %47

43:                                               ; preds = %35
  %44 = load i32, i32* @IXGBE_ERROR_ARGUMENT, align 4
  %45 = call i32 @ERROR_REPORT1(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %46, i32* %3, align 4
  br label %117

47:                                               ; preds = %42, %41, %40
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %115 [
    i32 133, label %51
    i32 135, label %51
    i32 134, label %51
    i32 132, label %110
  ]

51:                                               ; preds = %47, %47, %47
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %55, align 8
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %58 = bitcast %struct.ixgbe_hw* %57 to %struct.ixgbe_hw.1*
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @IXGBE_KRM_AN_CNTL_1(i32 %62)
  %64 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %65 = call i32 %56(%struct.ixgbe_hw.1* %58, i32 %63, i32 %64, i32* %6)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @IXGBE_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  br label %117

70:                                               ; preds = %51
  %71 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_SYM_PAUSE, align 4
  %72 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_ASM_PAUSE, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_SYM_PAUSE, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %70
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_ASM_PAUSE, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %83
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %92 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %94, align 8
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %97 = bitcast %struct.ixgbe_hw* %96 to %struct.ixgbe_hw.0*
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %99 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @IXGBE_KRM_AN_CNTL_1(i32 %101)
  %103 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 %95(%struct.ixgbe_hw.0* %97, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %3, align 4
  %106 = load i8*, i8** @TRUE, align 8
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %108 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  br label %116

110:                                              ; preds = %47
  %111 = load i8*, i8** @TRUE, align 8
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i8* %111, i8** %114, align 8
  br label %116

115:                                              ; preds = %47
  br label %116

116:                                              ; preds = %115, %110, %90
  br label %117

117:                                              ; preds = %116, %69, %43, %20
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

declare dso_local i32 @IXGBE_KRM_AN_CNTL_1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
