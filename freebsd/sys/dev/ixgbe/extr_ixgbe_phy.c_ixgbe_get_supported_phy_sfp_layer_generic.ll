; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_get_supported_phy_sfp_layer_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_get_supported_phy_sfp_layer_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_PHYSICAL_LAYER_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ixgbe_get_supported_phy_sfp_layer_generic\00", align 1
@ixgbe_sfp_type_not_present = common dso_local global i64 0, align 8
@IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA = common dso_local global i32 0, align 4
@IXGBE_SFF_1GBE_COMP_CODES = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBE_COMP_CODES = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBASESR_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_SR = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBASELR_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_LR = common dso_local global i32 0, align 4
@IXGBE_SFF_1GBASET_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_T = common dso_local global i32 0, align 4
@IXGBE_SFF_1GBASESX_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_SX = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_10GBE_COMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_supported_phy_sfp_layer_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %7 = load i32, i32* @IXGBE_PHYSICAL_LAYER_UNKNOWN, align 4
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %12, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = bitcast %struct.ixgbe_hw* %14 to %struct.ixgbe_hw.1*
  %16 = call i32 %13(%struct.ixgbe_hw.1* %15)
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ixgbe_sfp_type_not_present, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %112

25:                                               ; preds = %1
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %109 [
    i32 130, label %30
    i32 129, label %30
    i32 137, label %30
    i32 132, label %32
    i32 135, label %32
    i32 139, label %32
    i32 134, label %34
    i32 133, label %34
    i32 131, label %34
    i32 128, label %34
    i32 138, label %84
    i32 136, label %84
  ]

30:                                               ; preds = %25, %25, %25
  %31 = load i32, i32* @IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU, align 4
  store i32 %31, i32* %4, align 4
  br label %110

32:                                               ; preds = %25, %25, %25
  %33 = load i32, i32* @IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA, align 4
  store i32 %33, i32* %4, align 4
  br label %110

34:                                               ; preds = %25, %25, %25, %25
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %38, align 8
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = bitcast %struct.ixgbe_hw* %40 to %struct.ixgbe_hw.0*
  %42 = load i32, i32* @IXGBE_SFF_1GBE_COMP_CODES, align 4
  %43 = call i32 %39(%struct.ixgbe_hw.0* %41, i32 %42, i32* %6)
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %47, align 8
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %50 = bitcast %struct.ixgbe_hw* %49 to %struct.ixgbe_hw.0*
  %51 = load i32, i32* @IXGBE_SFF_10GBE_COMP_CODES, align 4
  %52 = call i32 %48(%struct.ixgbe_hw.0* %50, i32 %51, i32* %5)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @IXGBE_SFF_10GBASESR_CAPABLE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %34
  %58 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_SR, align 4
  store i32 %58, i32* %4, align 4
  br label %83

59:                                               ; preds = %34
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @IXGBE_SFF_10GBASELR_CAPABLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_LR, align 4
  store i32 %65, i32* %4, align 4
  br label %82

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @IXGBE_SFF_1GBASET_CAPABLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_T, align 4
  store i32 %72, i32* %4, align 4
  br label %81

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @IXGBE_SFF_1GBASESX_CAPABLE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_SX, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %73
  br label %81

81:                                               ; preds = %80, %71
  br label %82

82:                                               ; preds = %81, %64
  br label %83

83:                                               ; preds = %82, %57
  br label %110

84:                                               ; preds = %25, %25
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %86 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %88, align 8
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %91 = bitcast %struct.ixgbe_hw* %90 to %struct.ixgbe_hw.0*
  %92 = load i32, i32* @IXGBE_SFF_QSFP_10GBE_COMP, align 4
  %93 = call i32 %89(%struct.ixgbe_hw.0* %91, i32 %92, i32* %5)
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @IXGBE_SFF_10GBASESR_CAPABLE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_SR, align 4
  store i32 %99, i32* %4, align 4
  br label %108

100:                                              ; preds = %84
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @IXGBE_SFF_10GBASELR_CAPABLE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_LR, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %100
  br label %108

108:                                              ; preds = %107, %98
  br label %110

109:                                              ; preds = %25
  br label %110

110:                                              ; preds = %109, %108, %83, %32, %30
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %23
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
