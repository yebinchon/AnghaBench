; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_identify_phy_x550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_identify_phy_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@ixgbe_phy_x550em_kx4 = common dso_local global i32 0, align 4
@ixgbe_phy_x550em_xfi = common dso_local global i32 0, align 4
@ixgbe_phy_x550em_kr = common dso_local global i32 0, align 4
@ixgbe_phy_ext_1g_t = common dso_local global i32 0, align 4
@ixgbe_phy_fw = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY1_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY0_SM = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_identify_phy_x550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_identify_phy_x550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %7, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = bitcast %struct.ixgbe_hw* %9 to %struct.ixgbe_hw.0*
  %11 = call i32 %8(%struct.ixgbe_hw.0* %10)
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = call i32 @ixgbe_read_mng_if_sel_x550em(%struct.ixgbe_hw* %12)
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %76 [
    i32 135, label %17
    i32 129, label %20
    i32 134, label %25
    i32 130, label %28
    i32 128, label %33
    i32 131, label %38
    i32 137, label %38
    i32 136, label %38
    i32 140, label %43
    i32 133, label %43
    i32 132, label %46
    i32 139, label %51
    i32 138, label %51
  ]

17:                                               ; preds = %1
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = call i32 @ixgbe_identify_module_generic(%struct.ixgbe_hw* %18)
  store i32 %19, i32* %2, align 4
  br label %79

20:                                               ; preds = %1
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = call i32 @ixgbe_setup_mux_ctl(%struct.ixgbe_hw* %21)
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = call i32 @ixgbe_check_cs4227(%struct.ixgbe_hw* %23)
  br label %25

25:                                               ; preds = %1, %20
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = call i32 @ixgbe_identify_module_generic(%struct.ixgbe_hw* %26)
  store i32 %27, i32* %2, align 4
  br label %79

28:                                               ; preds = %1
  %29 = load i32, i32* @ixgbe_phy_x550em_kx4, align 4
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  br label %77

33:                                               ; preds = %1
  %34 = load i32, i32* @ixgbe_phy_x550em_xfi, align 4
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  br label %77

38:                                               ; preds = %1, %1, %1
  %39 = load i32, i32* @ixgbe_phy_x550em_kr, align 4
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  br label %77

43:                                               ; preds = %1, %1
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %45 = call i32 @ixgbe_identify_phy_generic(%struct.ixgbe_hw* %44)
  store i32 %45, i32* %2, align 4
  br label %79

46:                                               ; preds = %1
  %47 = load i32, i32* @ixgbe_phy_ext_1g_t, align 4
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  br label %77

51:                                               ; preds = %1, %1
  %52 = load i32, i32* @ixgbe_phy_fw, align 4
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load i32, i32* @IXGBE_GSSR_PHY1_SM, align 4
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  br label %75

68:                                               ; preds = %51
  %69 = load i32, i32* @IXGBE_GSSR_PHY0_SM, align 4
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %61
  br label %77

76:                                               ; preds = %1
  br label %77

77:                                               ; preds = %76, %75, %46, %38, %33, %28
  %78 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %43, %25, %17
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @ixgbe_read_mng_if_sel_x550em(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_identify_module_generic(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_setup_mux_ctl(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_check_cs4227(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_identify_phy_generic(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
