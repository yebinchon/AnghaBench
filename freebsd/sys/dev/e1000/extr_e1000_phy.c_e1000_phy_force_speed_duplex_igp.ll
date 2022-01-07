; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_force_speed_duplex_igp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_force_speed_duplex_igp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [33 x i8] c"e1000_phy_force_speed_duplex_igp\00", align 1
@PHY_CONTROL = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PORT_CTRL = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_AUTO_MDIX = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_FORCE_MDI_MDIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"IGP PSCR: %X\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Waiting for forced speed/duplex link on IGP phy.\0A\00", align 1
@PHY_FORCE_LIMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Link taking longer than expected.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_phy_force_speed_duplex_igp(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %13, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = bitcast %struct.e1000_hw* %15 to %struct.e1000_hw.1*
  %17 = load i32, i32* @PHY_CONTROL, align 4
  %18 = call i64 %14(%struct.e1000_hw.1* %16, i32 %17, i32* %6)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %2, align 8
  br label %102

23:                                               ; preds = %1
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = call i32 @e1000_phy_force_speed_duplex_setup(%struct.e1000_hw* %24, i32* %6)
  %26 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %28, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = bitcast %struct.e1000_hw* %30 to %struct.e1000_hw.0*
  %32 = load i32, i32* @PHY_CONTROL, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 %29(%struct.e1000_hw.0* %31, i32 %32, i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %2, align 8
  br label %102

39:                                               ; preds = %23
  %40 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %41 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %42, align 8
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = bitcast %struct.e1000_hw* %44 to %struct.e1000_hw.1*
  %46 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %47 = call i64 %43(%struct.e1000_hw.1* %45, i32 %46, i32* %6)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i64, i64* %5, align 8
  store i64 %51, i64* %2, align 8
  br label %102

52:                                               ; preds = %39
  %53 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %62 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %63, align 8
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = bitcast %struct.e1000_hw* %65 to %struct.e1000_hw.0*
  %67 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i64 %64(%struct.e1000_hw.0* %66, i32 %67, i32 %68)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %52
  %73 = load i64, i64* %5, align 8
  store i64 %73, i64* %2, align 8
  br label %102

74:                                               ; preds = %52
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = call i32 @usec_delay(i32 1)
  %78 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %79 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %74
  %83 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %86 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %84, i32 %85, i32 100000, i32* %7)
  store i64 %86, i64* %5, align 8
  %87 = load i64, i64* %5, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i64, i64* %5, align 8
  store i64 %90, i64* %2, align 8
  br label %102

91:                                               ; preds = %82
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %99 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %97, i32 %98, i32 100000, i32* %7)
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %96, %74
  %101 = load i64, i64* %5, align 8
  store i64 %101, i64* %2, align 8
  br label %102

102:                                              ; preds = %100, %89, %72, %50, %37, %21
  %103 = load i64, i64* %2, align 8
  ret i64 %103
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_phy_force_speed_duplex_setup(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
