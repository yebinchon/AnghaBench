; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_start_mac_link_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_start_mac_link_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ixgbe_start_mac_link_82599\00", align 1
@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_KX_KR = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII = common dso_local global i64 0, align 8
@IXGBE_AUTO_NEG_TIME = common dso_local global i64 0, align 8
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_KX_AN_COMP = common dso_local global i64 0, align 8
@IXGBE_ERR_AUTONEG_NOT_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Autoneg did not complete.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_start_mac_link_82599(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = call i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %20, align 8
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = bitcast %struct.ixgbe_hw* %22 to %struct.ixgbe_hw.0*
  %24 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %25 = call i64 %21(%struct.ixgbe_hw.0* %23, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @IXGBE_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %102

30:                                               ; preds = %16
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %2
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = call i32 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw* %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %41, align 8
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = bitcast %struct.ixgbe_hw* %43 to %struct.ixgbe_hw.1*
  %45 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %46 = call i32 %42(%struct.ixgbe_hw.1* %44, i32 %45)
  br label %47

47:                                               ; preds = %37, %32
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %100

50:                                               ; preds = %47
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %52 = load i32, i32* @IXGBE_AUTOC, align 4
  %53 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %51, i32 %52)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %56 = and i64 %54, %55
  %57 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_KX_KR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %50
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %62 = and i64 %60, %61
  %63 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %68 = and i64 %66, %67
  %69 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %65, %59, %50
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %72

72:                                               ; preds = %87, %71
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @IXGBE_AUTO_NEG_TIME, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = load i32, i32* @IXGBE_LINKS, align 4
  %79 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %77, i32 %78)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @IXGBE_LINKS_KX_AN_COMP, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %90

85:                                               ; preds = %76
  %86 = call i32 @msec_delay(i32 100)
  br label %87

87:                                               ; preds = %85
  %88 = load i64, i64* %7, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %72

90:                                               ; preds = %84, %72
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @IXGBE_LINKS_KX_AN_COMP, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* @IXGBE_ERR_AUTONEG_NOT_COMPLETE, align 8
  store i64 %96, i64* %8, align 8
  %97 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %90
  br label %99

99:                                               ; preds = %98, %65
  br label %100

100:                                              ; preds = %99, %47
  %101 = call i32 @msec_delay(i32 50)
  br label %102

102:                                              ; preds = %100, %29
  %103 = load i64, i64* %8, align 8
  ret i64 %103
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
