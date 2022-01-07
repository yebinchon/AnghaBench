; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_internal_phy_t_x550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_internal_phy_t_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.1 = type opaque

@ixgbe_media_type_copper = common dso_local global i64 0, align 8
@IXGBE_ERR_CONFIG = common dso_local global i64 0, align 8
@ixgbe_mac_X550EM_x = common dso_local global i64 0, align 8
@IXGBE_NW_MNG_IF_SEL_INT_PHY_MODE = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_MDIO_AUTO_NEG_VENDOR_STAT = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_MASK = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_setup_internal_phy_t_x550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %11, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = bitcast %struct.ixgbe_hw* %13 to %struct.ixgbe_hw.1*
  %15 = call i64 %12(%struct.ixgbe_hw.1* %14)
  %16 = load i64, i64* @ixgbe_media_type_copper, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @IXGBE_ERR_CONFIG, align 8
  store i64 %19, i64* %2, align 8
  br label %98

20:                                               ; preds = %1
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ixgbe_mac_X550EM_x, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %91

27:                                               ; preds = %20
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IXGBE_NW_MNG_IF_SEL_INT_PHY_MODE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %91, label %35

35:                                               ; preds = %27
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %37 = call i64 @ixgbe_ext_phy_t_x550em_get_link(%struct.ixgbe_hw* %36, i32* %5)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @IXGBE_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %2, align 8
  br label %98

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %47, i64* %2, align 8
  br label %98

48:                                               ; preds = %43
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %52, align 8
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = bitcast %struct.ixgbe_hw* %54 to %struct.ixgbe_hw.0*
  %56 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_STAT, align 4
  %57 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %58 = call i64 %53(%struct.ixgbe_hw.0* %55, i32 %56, i32 %57, i32* %7)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @IXGBE_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %2, align 8
  br label %98

64:                                               ; preds = %48
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = call i64 @ixgbe_ext_phy_t_x550em_get_link(%struct.ixgbe_hw* %65, i32* %5)
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @IXGBE_SUCCESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i64, i64* %6, align 8
  store i64 %71, i64* %2, align 8
  br label %98

72:                                               ; preds = %64
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %76, i64* %2, align 8
  br label %98

77:                                               ; preds = %72
  %78 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_MASK, align 4
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  switch i32 %81, label %86 [
    i32 129, label %82
    i32 128, label %84
  ]

82:                                               ; preds = %77
  %83 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  store i32 %83, i32* %4, align 4
  br label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  store i32 %85, i32* %4, align 4
  br label %88

86:                                               ; preds = %77
  %87 = load i64, i64* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 8
  store i64 %87, i64* %2, align 8
  br label %98

88:                                               ; preds = %84, %82
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %90 = call i64 @ixgbe_setup_ixfi_x550em(%struct.ixgbe_hw* %89, i32* %4)
  store i64 %90, i64* %2, align 8
  br label %98

91:                                               ; preds = %27, %20
  %92 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %93 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %7, align 4
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @ixgbe_setup_kr_speed_x550em(%struct.ixgbe_hw* %95, i32 %96)
  store i64 %97, i64* %2, align 8
  br label %98

98:                                               ; preds = %91, %88, %86, %75, %70, %62, %46, %41, %18
  %99 = load i64, i64* %2, align 8
  ret i64 %99
}

declare dso_local i64 @ixgbe_ext_phy_t_x550em_get_link(%struct.ixgbe_hw*, i32*) #1

declare dso_local i64 @ixgbe_setup_ixfi_x550em(%struct.ixgbe_hw*, i32*) #1

declare dso_local i64 @ixgbe_setup_kr_speed_x550em(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
