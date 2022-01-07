; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_fc_autoneg_backplane_x550em_a.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_fc_autoneg_backplane_x550em_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_ERR_FC_NOT_NEGOTIATED = common dso_local global i64 0, align 8
@IXGBE_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Flow control autoneg is disabled\00", align 1
@FALSE = common dso_local global i32 0, align 4
@IXGBE_ERROR_SOFTWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"The link is down\00", align 1
@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_KRM_LINK_S1_MAC_AN_COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Auto-Negotiation did not complete\0A\00", align 1
@IXGBE_KRM_AN_CNTL_1_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_KRM_AN_CNTL_1_ASM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_KRM_LP_BASE_PAGE_HIGH_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_KRM_LP_BASE_PAGE_HIGH_ASM_PAUSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_fc_autoneg_backplane_x550em_a(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %9 = load i64, i64* @IXGBE_ERR_FC_NOT_NEGOTIATED, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @IXGBE_ERROR_UNSUPPORTED, align 4
  %17 = call i32 @ERROR_REPORT1(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %108

18:                                               ; preds = %1
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)** %22, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = bitcast %struct.ixgbe_hw* %24 to %struct.ixgbe_hw.1*
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 %23(%struct.ixgbe_hw.1* %25, i32* %7, i32* %8, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @IXGBE_ERROR_SOFTWARE, align 4
  %32 = call i32 @ERROR_REPORT1(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %108

33:                                               ; preds = %18
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %37, align 8
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %40 = bitcast %struct.ixgbe_hw* %39 to %struct.ixgbe_hw.0*
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @IXGBE_KRM_LINK_S1(i32 %44)
  %46 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %47 = call i64 %38(%struct.ixgbe_hw.0* %40, i32 %45, i32 %46, i32* %3)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @IXGBE_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %33
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @IXGBE_KRM_LINK_S1_MAC_AN_COMPLETE, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %33
  %57 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i64, i64* @IXGBE_ERR_FC_NOT_NEGOTIATED, align 8
  store i64 %58, i64* %6, align 8
  br label %108

59:                                               ; preds = %51
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %63, align 8
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %66 = bitcast %struct.ixgbe_hw* %65 to %struct.ixgbe_hw.0*
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @IXGBE_KRM_AN_CNTL_1(i32 %70)
  %72 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %73 = call i64 %64(%struct.ixgbe_hw.0* %66, i32 %71, i32 %72, i32* %5)
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @IXGBE_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %59
  %78 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %108

79:                                               ; preds = %59
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %81 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %83, align 8
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %86 = bitcast %struct.ixgbe_hw* %85 to %struct.ixgbe_hw.0*
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %88 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @IXGBE_KRM_LP_BASE_PAGE_HIGH(i32 %90)
  %92 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %93 = call i64 %84(%struct.ixgbe_hw.0* %86, i32 %91, i32 %92, i32* %4)
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @IXGBE_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %79
  %98 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %108

99:                                               ; preds = %79
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_SYM_PAUSE, align 4
  %104 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_ASM_PAUSE, align 4
  %105 = load i32, i32* @IXGBE_KRM_LP_BASE_PAGE_HIGH_SYM_PAUSE, align 4
  %106 = load i32, i32* @IXGBE_KRM_LP_BASE_PAGE_HIGH_ASM_PAUSE, align 4
  %107 = call i64 @ixgbe_negotiate_fc(%struct.ixgbe_hw* %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  store i64 %107, i64* %6, align 8
  br label %108

108:                                              ; preds = %99, %97, %77, %56, %30, %15
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @IXGBE_SUCCESS, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32, i32* @TRUE, align 4
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %115 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i32 %113, i32* %116, align 8
  br label %129

117:                                              ; preds = %108
  %118 = load i32, i32* @FALSE, align 4
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %120 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %123 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %127 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  br label %129

129:                                              ; preds = %117, %112
  ret void
}

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

declare dso_local i32 @IXGBE_KRM_LINK_S1(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @IXGBE_KRM_AN_CNTL_1(i32) #1

declare dso_local i32 @IXGBE_KRM_LP_BASE_PAGE_HIGH(i32) #1

declare dso_local i64 @ixgbe_negotiate_fc(%struct.ixgbe_hw*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
