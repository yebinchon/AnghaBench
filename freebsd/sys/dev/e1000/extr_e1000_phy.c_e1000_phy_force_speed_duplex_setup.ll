; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_force_speed_duplex_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_force_speed_duplex_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info, %struct.TYPE_3__ }
%struct.e1000_mac_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"e1000_phy_force_speed_duplex_setup\00", align 1
@e1000_fc_none = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_SEL = common dso_local global i32 0, align 4
@E1000_CTRL_ASDE = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@E1000_ALL_HALF_DUPLEX = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@MII_CR_FULL_DUPLEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Half Duplex\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Full Duplex\0A\00", align 1
@E1000_ALL_100_SPEED = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_100 = common dso_local global i32 0, align 4
@MII_CR_SPEED_100 = common dso_local global i32 0, align 4
@MII_CR_SPEED_1000 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Forcing 100mb\0A\00", align 1
@E1000_CTRL_SPD_1000 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Forcing 10mb\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_phy_force_speed_duplex_setup(%struct.e1000_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.e1000_mac_info*, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_mac_info* %8, %struct.e1000_mac_info** %5, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @e1000_fc_none, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = load i32, i32* @E1000_CTRL, align 4
  %16 = call i32 @E1000_READ_REG(%struct.e1000_hw* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %18 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @E1000_CTRL_SPD_SEL, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @E1000_CTRL_ASDE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %31 = xor i32 %30, -1
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %5, align 8
  %36 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @E1000_ALL_HALF_DUPLEX, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %2
  %42 = load i32, i32* @E1000_CTRL_FD, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @MII_CR_FULL_DUPLEX, align 4
  %47 = xor i32 %46, -1
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %47
  store i32 %50, i32* %48, align 4
  %51 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %61

52:                                               ; preds = %2
  %53 = load i32, i32* @E1000_CTRL_FD, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @MII_CR_FULL_DUPLEX, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %52, %41
  %62 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %5, align 8
  %63 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @E1000_ALL_100_SPEED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  %69 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @MII_CR_SPEED_100, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @MII_CR_SPEED_1000, align 4
  %77 = xor i32 %76, -1
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %97

82:                                               ; preds = %61
  %83 = load i32, i32* @E1000_CTRL_SPD_1000, align 4
  %84 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @MII_CR_SPEED_1000, align 4
  %90 = load i32, i32* @MII_CR_SPEED_100, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %82, %68
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %101, align 8
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %104 = bitcast %struct.e1000_hw* %103 to %struct.e1000_hw.0*
  %105 = call i32 %102(%struct.e1000_hw.0* %104)
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %107 = load i32, i32* @E1000_CTRL, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %106, i32 %107, i32 %108)
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
