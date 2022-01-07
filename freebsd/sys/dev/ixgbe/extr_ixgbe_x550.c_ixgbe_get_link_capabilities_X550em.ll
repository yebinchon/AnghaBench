; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_get_link_capabilities_X550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_get_link_capabilities_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"ixgbe_get_link_capabilities_X550em\00", align 1
@ixgbe_phy_fw = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ixgbe_media_type_fiber = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ixgbe_sfp_type_1g_sx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core1 = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@ixgbe_mac_X550EM_a = common dso_local global i32 0, align 4
@IXGBE_NW_MNG_IF_SEL_PHY_SPEED_2_5G = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_2_5GB_FULL = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_KR_L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_link_capabilities_X550em(%struct.ixgbe_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ixgbe_phy_fw, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i32, i32* @TRUE, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  store i32 0, i32* %4, align 4
  br label %127

23:                                               ; preds = %3
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ixgbe_media_type_fiber, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %23
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %60, label %39

39:                                               ; preds = %30
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %60, label %46

46:                                               ; preds = %39
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53, %46, %39, %30
  %61 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %63, i32* %4, align 4
  br label %127

64:                                               ; preds = %53
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %66 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %72 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %73 = or i32 %71, %72
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  br label %78

75:                                               ; preds = %64
  %76 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %77 = load i32*, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %70
  br label %125

79:                                               ; preds = %23
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %81 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %117 [
    i32 130, label %84
    i32 129, label %84
    i32 128, label %87
  ]

84:                                               ; preds = %79, %79
  %85 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %86 = load i32*, i32** %6, align 8
  store i32 %85, i32* %86, align 4
  br label %122

87:                                               ; preds = %79
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %89 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ixgbe_mac_X550EM_a, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %87
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %96 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IXGBE_NW_MNG_IF_SEL_PHY_SPEED_2_5G, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* @IXGBE_LINK_SPEED_2_5GB_FULL, align 4
  %104 = load i32*, i32** %6, align 8
  store i32 %103, i32* %104, align 4
  br label %122

105:                                              ; preds = %94
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %107 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_KR_L, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %113 = load i32*, i32** %6, align 8
  store i32 %112, i32* %113, align 4
  br label %122

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115, %87
  br label %117

117:                                              ; preds = %79, %116
  %118 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %119 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %120 = or i32 %118, %119
  %121 = load i32*, i32** %6, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %111, %102, %84
  %123 = load i32, i32* @TRUE, align 4
  %124 = load i32*, i32** %7, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %78
  %126 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %60, %15
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
