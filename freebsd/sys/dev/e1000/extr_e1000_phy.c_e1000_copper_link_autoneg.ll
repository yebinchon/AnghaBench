; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_copper_link_autoneg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_copper_link_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_phy_info }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_phy_info = type { i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [26 x i8] c"e1000_copper_link_autoneg\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Reconfiguring auto-neg advertisement params\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error Setting up Auto-Negotiation\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Restarting Auto-Neg\0A\00", align 1
@PHY_CONTROL = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@MII_CR_RESTART_AUTO_NEG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Error while waiting for autoneg to complete\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_copper_link_autoneg(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %4, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %1
  %28 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = call i64 @e1000_phy_setup_autoneg(%struct.e1000_hw* %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i64, i64* %5, align 8
  store i64 %35, i64* %2, align 8
  br label %89

36:                                               ; preds = %27
  %37 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %40, align 8
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = bitcast %struct.e1000_hw* %42 to %struct.e1000_hw.1*
  %44 = load i32, i32* @PHY_CONTROL, align 4
  %45 = call i64 %41(%struct.e1000_hw.1* %43, i32 %44, i32* %6)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %2, align 8
  br label %89

50:                                               ; preds = %36
  %51 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %52 = load i32, i32* @MII_CR_RESTART_AUTO_NEG, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %57 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %58, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = bitcast %struct.e1000_hw* %60 to %struct.e1000_hw.0*
  %62 = load i32, i32* @PHY_CONTROL, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i64 %59(%struct.e1000_hw.0* %61, i32 %62, i32 %63)
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i64, i64* %5, align 8
  store i64 %68, i64* %2, align 8
  br label %89

69:                                               ; preds = %50
  %70 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %71 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = call i64 @e1000_wait_autoneg(%struct.e1000_hw* %75)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i64, i64* %5, align 8
  store i64 %81, i64* %2, align 8
  br label %89

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %69
  %84 = load i32, i32* @TRUE, align 4
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load i64, i64* %5, align 8
  store i64 %88, i64* %2, align 8
  br label %89

89:                                               ; preds = %83, %79, %67, %48, %33
  %90 = load i64, i64* %2, align 8
  ret i64 %90
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_phy_setup_autoneg(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_wait_autoneg(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
