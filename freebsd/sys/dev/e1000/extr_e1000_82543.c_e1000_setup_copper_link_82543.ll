; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_setup_copper_link_82543.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_setup_copper_link_82543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [30 x i8] c"e1000_setup_copper_link_82543\00", align 1
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Forcing Speed and Duplex\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error Forcing Speed and Duplex\0A\00", align 1
@COPPER_LINK_UP_LIMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Valid link established!!!\0A\00", align 1
@e1000_82544 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to establish link!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_copper_link_82543 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_copper_link_82543(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = load i32, i32* @E1000_CTRL, align 4
  %9 = call i32 @E1000_READ_REG(%struct.e1000_hw* %7, i32 %8)
  %10 = load i32, i32* @E1000_CTRL_SLU, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e1000_82543, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %20 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = load i32, i32* @E1000_CTRL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %24, i32 %25, i32 %26)
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %31, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = bitcast %struct.e1000_hw* %33 to %struct.e1000_hw.1*
  %35 = call i64 %32(%struct.e1000_hw.1* %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  br label %119

39:                                               ; preds = %18
  br label %51

40:                                               ; preds = %1
  %41 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %42 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = load i32, i32* @E1000_CTRL, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %40, %39
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = call i64 @e1000_copper_link_setup_m88(%struct.e1000_hw* %52)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %119

57:                                               ; preds = %51
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %65 = call i64 @e1000_copper_link_autoneg(%struct.e1000_hw* %64)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %119

69:                                               ; preds = %63
  br label %79

70:                                               ; preds = %57
  %71 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = call i64 @e1000_phy_force_speed_duplex_82543(%struct.e1000_hw* %72)
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %119

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %69
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %81 = load i32, i32* @COPPER_LINK_UP_LIMIT, align 4
  %82 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %80, i32 %81, i32 10, i32* %5)
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %119

86:                                               ; preds = %79
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %92 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @e1000_82544, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %89
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %101, align 8
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %104 = bitcast %struct.e1000_hw* %103 to %struct.e1000_hw.0*
  %105 = call i32 %102(%struct.e1000_hw.0* %104)
  br label %113

106:                                              ; preds = %89
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %108 = call i64 @e1000_config_mac_to_phy_82543(%struct.e1000_hw* %107)
  store i64 %108, i64* %4, align 8
  %109 = load i64, i64* %4, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %119

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %97
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %115 = call i64 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw* %114)
  store i64 %115, i64* %4, align 8
  br label %118

116:                                              ; preds = %86
  %117 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %113
  br label %119

119:                                              ; preds = %118, %111, %85, %76, %68, %56, %38
  %120 = load i64, i64* %4, align 8
  ret i64 %120
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_copper_link_setup_m88(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_copper_link_autoneg(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_phy_force_speed_duplex_82543(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000_config_mac_to_phy_82543(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
