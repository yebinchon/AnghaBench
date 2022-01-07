; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_ixfi_x550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_ixfi_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mac_info, %struct.TYPE_4__ }
%struct.ixgbe_mac_info = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i32 }

@ixgbe_mac_X550EM_x = common dso_local global i64 0, align 8
@IXGBE_ERR_LINK_SETUP = common dso_local global i64 0, align 8
@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_10G = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_1G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*)* @ixgbe_setup_ixfi_x550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_ixfi_x550em(%struct.ixgbe_hw* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ixgbe_mac_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  store %struct.ixgbe_mac_info* %10, %struct.ixgbe_mac_info** %6, align 8
  %11 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %6, align 8
  %12 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ixgbe_mac_X550EM_x, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @IXGBE_ERR_LINK_SETUP, align 8
  store i64 %17, i64* %3, align 8
  br label %98

18:                                               ; preds = %2
  %19 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %6, align 8
  %20 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %21, align 8
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %24 = bitcast %struct.ixgbe_hw* %23 to %struct.ixgbe_hw.0*
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %28)
  %30 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %31 = call i64 %22(%struct.ixgbe_hw.0* %24, i32 %29, i32 %30, i32* %8)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @IXGBE_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %3, align 8
  br label %98

37:                                               ; preds = %18
  %38 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %56 [
    i32 129, label %48
    i32 128, label %52
  ]

48:                                               ; preds = %37
  %49 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_10G, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %58

52:                                               ; preds = %37
  %53 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_1G, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %58

56:                                               ; preds = %37
  %57 = load i64, i64* @IXGBE_ERR_LINK_SETUP, align 8
  store i64 %57, i64* %3, align 8
  br label %98

58:                                               ; preds = %52, %48
  %59 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %6, align 8
  %60 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %61, align 8
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %64 = bitcast %struct.ixgbe_hw* %63 to %struct.ixgbe_hw.1*
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %66 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %68)
  %70 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i64 %62(%struct.ixgbe_hw.1* %64, i32 %69, i32 %70, i32 %71)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @IXGBE_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %58
  %77 = load i64, i64* %7, align 8
  store i64 %77, i64* %3, align 8
  br label %98

78:                                               ; preds = %58
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %80 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ixgbe_mac_X550EM_x, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %87 = call i64 @ixgbe_setup_ixfi_x550em_x(%struct.ixgbe_hw* %86)
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @IXGBE_SUCCESS, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i64, i64* %7, align 8
  store i64 %92, i64* %3, align 8
  br label %98

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %78
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %96 = call i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw* %95)
  store i64 %96, i64* %7, align 8
  %97 = load i64, i64* %7, align 8
  store i64 %97, i64* %3, align 8
  br label %98

98:                                               ; preds = %94, %91, %76, %56, %35, %16
  %99 = load i64, i64* %3, align 8
  ret i64 %99
}

declare dso_local i32 @IXGBE_KRM_LINK_CTRL_1(i32) #1

declare dso_local i64 @ixgbe_setup_ixfi_x550em_x(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
