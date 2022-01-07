; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_setup_low_power_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_setup_low_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@FALSE = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_X_10G_T = common dso_local global i64 0, align 8
@IXGBE_GRC = common dso_local global i32 0, align 4
@IXGBE_WUS = common dso_local global i32 0, align 4
@IXGBE_WUFC = common dso_local global i32 0, align 4
@IXGBE_WUC = common dso_local global i32 0, align 4
@IXGBE_WUC_WKEN = common dso_local global i32 0, align 4
@IXGBE_WUC_PME_EN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error entering LPLU: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixgbe_setup_low_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_setup_low_power_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.adapter* @iflib_get_softc(i32 %7)
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @iflib_get_dev(i32 %11)
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @ixgbe_set_phy_power(%struct.ixgbe_hw* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IXGBE_DEV_ID_X550EM_X_10G_T, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %82

27:                                               ; preds = %21
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %31, align 8
  %33 = icmp ne i32 (%struct.ixgbe_hw.0*)* %32, null
  br i1 %33, label %34, label %82

34:                                               ; preds = %27
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %36 = load i32, i32* @IXGBE_GRC, align 4
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %38 = load i32, i32* @IXGBE_GRC, align 4
  %39 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %37, i32 %38)
  %40 = and i32 %39, -3
  %41 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %35, i32 %36, i32 %40)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %43 = load i32, i32* @IXGBE_WUS, align 4
  %44 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %42, i32 %43, i32 -1)
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %46 = load i32, i32* @IXGBE_WUFC, align 4
  %47 = load %struct.adapter*, %struct.adapter** %3, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %45, i32 %46, i32 %49)
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %52 = load i32, i32* @IXGBE_WUC, align 4
  %53 = load i32, i32* @IXGBE_WUC_WKEN, align 4
  %54 = load i32, i32* @IXGBE_WUC_PME_EN, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %51, i32 %52, i32 %55)
  %57 = load i32, i32* @TRUE, align 4
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @ixgbe_if_stop(i32 %61)
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %66, align 8
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %69 = bitcast %struct.ixgbe_hw* %68 to %struct.ixgbe_hw.0*
  %70 = call i32 %67(%struct.ixgbe_hw.0* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %34
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %34
  %78 = load i32, i32* @FALSE, align 4
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %80 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  br label %85

82:                                               ; preds = %27, %21
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @ixgbe_if_stop(i32 %83)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @ixgbe_set_phy_power(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_if_stop(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
