; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_igp3_phy_powerdown_workaround_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_igp3_phy_powerdown_workaround_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"e1000_igp3_phy_powerdown_workaround_ich8lan\00", align 1
@e1000_phy_igp_3 = common dso_local global i64 0, align 8
@E1000_PHY_CTRL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_GBE_DISABLE = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_NOND0A_GBE_DISABLE = common dso_local global i32 0, align 4
@e1000_ich8lan = common dso_local global i64 0, align 8
@IGP3_VR_CTRL = common dso_local global i32 0, align 4
@IGP3_VR_CTRL_DEV_POWERDOWN_MODE_MASK = common dso_local global i32 0, align 4
@IGP3_VR_CTRL_MODE_SHUTDOWN = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_igp3_phy_powerdown_workaround_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_phy_igp_3, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %97

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %94, %14
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = load i32, i32* @E1000_PHY_CTRL, align 4
  %18 = call i32 @E1000_READ_REG(%struct.e1000_hw* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @E1000_PHY_CTRL_GBE_DISABLE, align 4
  %20 = load i32, i32* @E1000_PHY_CTRL_NOND0A_GBE_DISABLE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = load i32, i32* @E1000_PHY_CTRL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %24, i32 %25, i32 %26)
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @e1000_ich8lan, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %15
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = call i32 @e1000_gig_downshift_workaround_ich8lan(%struct.e1000_hw* %35)
  br label %37

37:                                               ; preds = %34, %15
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32*)** %41, align 8
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = bitcast %struct.e1000_hw* %43 to %struct.e1000_hw.0*
  %45 = load i32, i32* @IGP3_VR_CTRL, align 4
  %46 = call i32 %42(%struct.e1000_hw.0* %44, i32 %45, i32* %4)
  %47 = load i32, i32* @IGP3_VR_CTRL_DEV_POWERDOWN_MODE_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32 (%struct.e1000_hw.1*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32, i32)** %54, align 8
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = bitcast %struct.e1000_hw* %56 to %struct.e1000_hw.1*
  %58 = load i32, i32* @IGP3_VR_CTRL, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @IGP3_VR_CTRL_MODE_SHUTDOWN, align 4
  %61 = or i32 %59, %60
  %62 = call i32 %55(%struct.e1000_hw.1* %57, i32 %58, i32 %61)
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %64 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32*)** %66, align 8
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %69 = bitcast %struct.e1000_hw* %68 to %struct.e1000_hw.0*
  %70 = load i32, i32* @IGP3_VR_CTRL, align 4
  %71 = call i32 %67(%struct.e1000_hw.0* %69, i32 %70, i32* %4)
  %72 = load i32, i32* @IGP3_VR_CTRL_DEV_POWERDOWN_MODE_MASK, align 4
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @IGP3_VR_CTRL_MODE_SHUTDOWN, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %37
  %79 = load i64, i64* %5, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %37
  br label %97

82:                                               ; preds = %78
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %84 = load i32, i32* @E1000_CTRL, align 4
  %85 = call i32 @E1000_READ_REG(%struct.e1000_hw* %83, i32 %84)
  store i32 %85, i32* %3, align 4
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %87 = load i32, i32* @E1000_CTRL, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %86, i32 %87, i32 %90)
  %92 = load i64, i64* %5, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %5, align 8
  br label %94

94:                                               ; preds = %82
  %95 = load i64, i64* %5, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %15, label %97

97:                                               ; preds = %13, %94, %81
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_gig_downshift_workaround_ich8lan(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
