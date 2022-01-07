; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_restart_an_internal_phy_x550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_restart_an_internal_phy_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Auto-negotiation did not complete\0A\00", align 1
@IXGBE_KRM_LINK_CTRL_1_TETH_AN_RESTART = common dso_local global i32 0, align 4
@ixgbe_mac_X550EM_a = common dso_local global i64 0, align 8
@IXGBE_KRM_PMD_FLX_MASK_ST20_FW_AN_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_restart_an_internal_phy_x550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %10, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = bitcast %struct.ixgbe_hw* %12 to %struct.ixgbe_hw.1*
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %17)
  %19 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %20 = call i64 %11(%struct.ixgbe_hw.1* %13, i32 %18, i32 %19, i32* %5)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %2, align 8
  br label %92

26:                                               ; preds = %1
  %27 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_AN_RESTART, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %33, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = bitcast %struct.ixgbe_hw* %35 to %struct.ixgbe_hw.0*
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %40)
  %42 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 %34(%struct.ixgbe_hw.0* %36, i32 %41, i32 %42, i32 %43)
  store i64 %44, i64* %4, align 8
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ixgbe_mac_X550EM_a, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %90

51:                                               ; preds = %26
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %55, align 8
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %58 = bitcast %struct.ixgbe_hw* %57 to %struct.ixgbe_hw.1*
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32 %62)
  %64 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %65 = call i64 %56(%struct.ixgbe_hw.1* %58, i32 %63, i32 %64, i32* %6)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %51
  %69 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %70 = load i64, i64* %4, align 8
  store i64 %70, i64* %2, align 8
  br label %92

71:                                               ; preds = %51
  %72 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_FW_AN_RESTART, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %76 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %78, align 8
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %81 = bitcast %struct.ixgbe_hw* %80 to %struct.ixgbe_hw.0*
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %83 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32 %85)
  %87 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i64 %79(%struct.ixgbe_hw.0* %81, i32 %86, i32 %87, i32 %88)
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %71, %26
  %91 = load i64, i64* %4, align 8
  store i64 %91, i64* %2, align 8
  br label %92

92:                                               ; preds = %90, %68, %23
  %93 = load i64, i64* %2, align 8
  ret i64 %93
}

declare dso_local i32 @IXGBE_KRM_LINK_CTRL_1(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
