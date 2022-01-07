; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_d0_lplu_state_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_d0_lplu_state_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"e1000_set_d0_lplu_state_82575\00", align 1
@IGP02E1000_PHY_POWER_MGMT = common dso_local global i32 0, align 4
@IGP02E1000_PM_D0_LPLU = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_set_d0_lplu_state_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_d0_lplu_state_82575(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_phy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %5, align 8
  %10 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %10, i64* %6, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %15, align 8
  %17 = icmp ne i64 (%struct.e1000_hw.1*, i32, i32*)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %163

19:                                               ; preds = %2
  %20 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %21 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %22, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = bitcast %struct.e1000_hw* %24 to %struct.e1000_hw.1*
  %26 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %27 = call i64 %23(%struct.e1000_hw.1* %25, i32 %26, i32* %7)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %163

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %31
  %35 = load i32, i32* @IGP02E1000_PM_D0_LPLU, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %39 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %40, align 8
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = bitcast %struct.e1000_hw* %42 to %struct.e1000_hw.0*
  %44 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 %41(%struct.e1000_hw.0* %43, i32 %44, i32 %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %163

50:                                               ; preds = %34
  %51 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %52 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %53, align 8
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = bitcast %struct.e1000_hw* %55 to %struct.e1000_hw.1*
  %57 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %58 = call i64 %54(%struct.e1000_hw.1* %56, i32 %57, i32* %7)
  store i64 %58, i64* %6, align 8
  %59 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %64 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %65, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = bitcast %struct.e1000_hw* %67 to %struct.e1000_hw.0*
  %69 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i64 %66(%struct.e1000_hw.0* %68, i32 %69, i32 %70)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %50
  br label %163

75:                                               ; preds = %50
  br label %162

76:                                               ; preds = %31
  %77 = load i32, i32* @IGP02E1000_PM_D0_LPLU, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %82 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %83, align 8
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %86 = bitcast %struct.e1000_hw* %85 to %struct.e1000_hw.0*
  %87 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i64 %84(%struct.e1000_hw.0* %86, i32 %87, i32 %88)
  store i64 %89, i64* %6, align 8
  %90 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %91 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @e1000_smart_speed_on, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %76
  %96 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %97 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %98, align 8
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %101 = bitcast %struct.e1000_hw* %100 to %struct.e1000_hw.1*
  %102 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %103 = call i64 %99(%struct.e1000_hw.1* %101, i32 %102, i32* %7)
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %163

107:                                              ; preds = %95
  %108 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %112 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %113, align 8
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %116 = bitcast %struct.e1000_hw* %115 to %struct.e1000_hw.0*
  %117 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i64 %114(%struct.e1000_hw.0* %116, i32 %117, i32 %118)
  store i64 %119, i64* %6, align 8
  %120 = load i64, i64* %6, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %107
  br label %163

123:                                              ; preds = %107
  br label %161

124:                                              ; preds = %76
  %125 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %126 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @e1000_smart_speed_off, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %160

130:                                              ; preds = %124
  %131 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %132 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %133, align 8
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %136 = bitcast %struct.e1000_hw* %135 to %struct.e1000_hw.1*
  %137 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %138 = call i64 %134(%struct.e1000_hw.1* %136, i32 %137, i32* %7)
  store i64 %138, i64* %6, align 8
  %139 = load i64, i64* %6, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  br label %163

142:                                              ; preds = %130
  %143 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %7, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %7, align 4
  %147 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %148 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %149, align 8
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %152 = bitcast %struct.e1000_hw* %151 to %struct.e1000_hw.0*
  %153 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i64 %150(%struct.e1000_hw.0* %152, i32 %153, i32 %154)
  store i64 %155, i64* %6, align 8
  %156 = load i64, i64* %6, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %142
  br label %163

159:                                              ; preds = %142
  br label %160

160:                                              ; preds = %159, %124
  br label %161

161:                                              ; preds = %160, %123
  br label %162

162:                                              ; preds = %161, %75
  br label %163

163:                                              ; preds = %162, %158, %141, %122, %106, %74, %49, %30, %18
  %164 = load i64, i64* %6, align 8
  ret i64 %164
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
