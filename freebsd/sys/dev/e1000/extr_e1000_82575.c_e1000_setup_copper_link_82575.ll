; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_setup_copper_link_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_setup_copper_link_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_setup_copper_link_82575\00", align 1
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_82580_PHY_POWER_MGMT = common dso_local global i32 0, align 4
@E1000_82580_PM_GO_LINKD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error resetting the PHY.\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_copper_link_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_copper_link_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = load i32, i32* @E1000_CTRL, align 4
  %9 = call i32 @E1000_READ_REG(%struct.e1000_hw* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @E1000_CTRL_SLU, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %14 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = load i32, i32* @E1000_CTRL, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %19, i32 %20, i32 %21)
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %39 [
    i32 135, label %27
    i32 132, label %27
    i32 134, label %27
    i32 133, label %27
  ]

27:                                               ; preds = %1, %1, %1, %1
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = load i32, i32* @E1000_82580_PHY_POWER_MGMT, align 4
  %30 = call i32 @E1000_READ_REG(%struct.e1000_hw* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @E1000_82580_PM_GO_LINKD, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = load i32, i32* @E1000_82580_PHY_POWER_MGMT, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %35, i32 %36, i32 %37)
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %27
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = call i64 @e1000_setup_serdes_link_82575(%struct.e1000_hw* %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %98

46:                                               ; preds = %40
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = call i64 @e1000_sgmii_active_82575(%struct.e1000_hw* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = call i32 @msec_delay(i32 300)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %55, align 8
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %58 = bitcast %struct.e1000_hw* %57 to %struct.e1000_hw.0*
  %59 = call i64 %56(%struct.e1000_hw.0* %58)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %98

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %46
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %88 [
    i32 130, label %70
    i32 128, label %70
    i32 129, label %82
    i32 131, label %85
  ]

70:                                               ; preds = %65, %65
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %78 [
    i32 140, label %75
    i32 139, label %75
    i32 138, label %75
    i32 136, label %75
    i32 137, label %75
    i32 141, label %75
  ]

75:                                               ; preds = %70, %70, %70, %70, %70, %70
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %77 = call i64 @e1000_copper_link_setup_m88_gen2(%struct.e1000_hw* %76)
  store i64 %77, i64* %4, align 8
  br label %81

78:                                               ; preds = %70
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %80 = call i64 @e1000_copper_link_setup_m88(%struct.e1000_hw* %79)
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %78, %75
  br label %91

82:                                               ; preds = %65
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %84 = call i64 @e1000_copper_link_setup_igp(%struct.e1000_hw* %83)
  store i64 %84, i64* %4, align 8
  br label %91

85:                                               ; preds = %65
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %87 = call i64 @e1000_copper_link_setup_82577(%struct.e1000_hw* %86)
  store i64 %87, i64* %4, align 8
  br label %91

88:                                               ; preds = %65
  %89 = load i64, i64* @E1000_ERR_PHY, align 8
  %90 = sub nsw i64 0, %89
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %88, %85, %82, %81
  %92 = load i64, i64* %4, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %98

95:                                               ; preds = %91
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %97 = call i64 @e1000_setup_copper_link_generic(%struct.e1000_hw* %96)
  store i64 %97, i64* %4, align 8
  br label %98

98:                                               ; preds = %95, %94, %62, %45
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_setup_serdes_link_82575(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_sgmii_active_82575(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_copper_link_setup_m88_gen2(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_copper_link_setup_m88(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_copper_link_setup_igp(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_copper_link_setup_82577(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_setup_copper_link_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
