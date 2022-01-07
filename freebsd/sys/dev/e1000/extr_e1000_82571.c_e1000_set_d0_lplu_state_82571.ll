; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_set_d0_lplu_state_82571.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_set_d0_lplu_state_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [30 x i8] c"e1000_set_d0_lplu_state_82571\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@IGP02E1000_PHY_POWER_MGMT = common dso_local global i32 0, align 4
@IGP02E1000_PM_D0_LPLU = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_set_d0_lplu_state_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_d0_lplu_state_82571(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_phy_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_phy_info* %10, %struct.e1000_phy_info** %6, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %13 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %14, align 8
  %16 = icmp ne i64 (%struct.e1000_hw.1*, i32, i32*)* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %18, i64* %3, align 8
  br label %176

19:                                               ; preds = %2
  %20 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %21 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %22, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %25 = bitcast %struct.e1000_hw* %24 to %struct.e1000_hw.1*
  %26 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %27 = call i64 %23(%struct.e1000_hw.1* %25, i32 %26, i32* %8)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %3, align 8
  br label %176

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %32
  %36 = load i32, i32* @IGP02E1000_PM_D0_LPLU, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %40 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %41, align 8
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %44 = bitcast %struct.e1000_hw* %43 to %struct.e1000_hw.0*
  %45 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 %42(%struct.e1000_hw.0* %44, i32 %45, i32 %46)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %3, align 8
  br label %176

52:                                               ; preds = %35
  %53 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %54 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %55, align 8
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = bitcast %struct.e1000_hw* %57 to %struct.e1000_hw.1*
  %59 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %60 = call i64 %56(%struct.e1000_hw.1* %58, i32 %59, i32* %8)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i64, i64* %7, align 8
  store i64 %64, i64* %3, align 8
  br label %176

65:                                               ; preds = %52
  %66 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %71 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %72, align 8
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %75 = bitcast %struct.e1000_hw* %74 to %struct.e1000_hw.0*
  %76 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i64 %73(%struct.e1000_hw.0* %75, i32 %76, i32 %77)
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %65
  %82 = load i64, i64* %7, align 8
  store i64 %82, i64* %3, align 8
  br label %176

83:                                               ; preds = %65
  br label %174

84:                                               ; preds = %32
  %85 = load i32, i32* @IGP02E1000_PM_D0_LPLU, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %90 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %91, align 8
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %94 = bitcast %struct.e1000_hw* %93 to %struct.e1000_hw.0*
  %95 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i64 %92(%struct.e1000_hw.0* %94, i32 %95, i32 %96)
  store i64 %97, i64* %7, align 8
  %98 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %99 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @e1000_smart_speed_on, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %84
  %104 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %105 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %106, align 8
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %109 = bitcast %struct.e1000_hw* %108 to %struct.e1000_hw.1*
  %110 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %111 = call i64 %107(%struct.e1000_hw.1* %109, i32 %110, i32* %8)
  store i64 %111, i64* %7, align 8
  %112 = load i64, i64* %7, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = load i64, i64* %7, align 8
  store i64 %115, i64* %3, align 8
  br label %176

116:                                              ; preds = %103
  %117 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %121 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %122, align 8
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %125 = bitcast %struct.e1000_hw* %124 to %struct.e1000_hw.0*
  %126 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i64 %123(%struct.e1000_hw.0* %125, i32 %126, i32 %127)
  store i64 %128, i64* %7, align 8
  %129 = load i64, i64* %7, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %116
  %132 = load i64, i64* %7, align 8
  store i64 %132, i64* %3, align 8
  br label %176

133:                                              ; preds = %116
  br label %173

134:                                              ; preds = %84
  %135 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %136 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @e1000_smart_speed_off, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %172

140:                                              ; preds = %134
  %141 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %142 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %143, align 8
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %146 = bitcast %struct.e1000_hw* %145 to %struct.e1000_hw.1*
  %147 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %148 = call i64 %144(%struct.e1000_hw.1* %146, i32 %147, i32* %8)
  store i64 %148, i64* %7, align 8
  %149 = load i64, i64* %7, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = load i64, i64* %7, align 8
  store i64 %152, i64* %3, align 8
  br label %176

153:                                              ; preds = %140
  %154 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %8, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %8, align 4
  %158 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %159 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %160, align 8
  %162 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %163 = bitcast %struct.e1000_hw* %162 to %struct.e1000_hw.0*
  %164 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %165 = load i32, i32* %8, align 4
  %166 = call i64 %161(%struct.e1000_hw.0* %163, i32 %164, i32 %165)
  store i64 %166, i64* %7, align 8
  %167 = load i64, i64* %7, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %153
  %170 = load i64, i64* %7, align 8
  store i64 %170, i64* %3, align 8
  br label %176

171:                                              ; preds = %153
  br label %172

172:                                              ; preds = %171, %134
  br label %173

173:                                              ; preds = %172, %133
  br label %174

174:                                              ; preds = %173, %83
  %175 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %175, i64* %3, align 8
  br label %176

176:                                              ; preds = %174, %169, %151, %131, %114, %81, %63, %50, %30, %17
  %177 = load i64, i64* %3, align 8
  ret i64 %177
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
