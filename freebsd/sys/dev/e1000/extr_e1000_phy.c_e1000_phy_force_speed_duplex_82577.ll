; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_force_speed_duplex_82577.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_force_speed_duplex_82577.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [35 x i8] c"e1000_phy_force_speed_duplex_82577\00", align 1
@PHY_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Waiting for forced speed/duplex link on 82577 phy\0A\00", align 1
@PHY_FORCE_LIMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Link taking longer than expected.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_phy_force_speed_duplex_82577(%struct.e1000_hw* %0) #0 {
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
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
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
  br label %65

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
  br label %65

39:                                               ; preds = %23
  %40 = call i32 @usec_delay(i32 1)
  %41 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %49 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %47, i32 %48, i32 100000, i32* %7)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i64, i64* %5, align 8
  store i64 %53, i64* %2, align 8
  br label %65

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %62 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %60, i32 %61, i32 100000, i32* %7)
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %59, %39
  %64 = load i64, i64* %5, align 8
  store i64 %64, i64* %2, align 8
  br label %65

65:                                               ; preds = %63, %52, %37, %21
  %66 = load i64, i64* %2, align 8
  ret i64 %66
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_phy_force_speed_duplex_setup(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
