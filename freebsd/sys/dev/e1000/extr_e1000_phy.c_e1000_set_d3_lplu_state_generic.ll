; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_set_d3_lplu_state_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_set_d3_lplu_state_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"e1000_set_d3_lplu_state_generic\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@IGP02E1000_PHY_POWER_MGMT = common dso_local global i32 0, align 4
@IGP02E1000_PM_D3_LPLU = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@E1000_ALL_SPEED_DUPLEX = common dso_local global i64 0, align 8
@E1000_ALL_NOT_GIG = common dso_local global i64 0, align 8
@E1000_ALL_10_SPEED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_set_d3_lplu_state_generic(%struct.e1000_hw* %0, i32 %1) #0 {
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
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %15, align 8
  %17 = icmp ne i64 (%struct.e1000_hw.1*, i32, i32*)* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %19, i64* %3, align 8
  br label %196

20:                                               ; preds = %2
  %21 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %23, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.1*
  %27 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %28 = call i64 %24(%struct.e1000_hw.1* %26, i32 %27, i32* %8)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* %3, align 8
  br label %196

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %131, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @IGP02E1000_PM_D3_LPLU, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %42 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %43, align 8
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %46 = bitcast %struct.e1000_hw* %45 to %struct.e1000_hw.0*
  %47 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 %44(%struct.e1000_hw.0* %46, i32 %47, i32 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %3, align 8
  br label %196

54:                                               ; preds = %36
  %55 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %56 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @e1000_smart_speed_on, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %54
  %61 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %62 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %63, align 8
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %66 = bitcast %struct.e1000_hw* %65 to %struct.e1000_hw.1*
  %67 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %68 = call i64 %64(%struct.e1000_hw.1* %66, i32 %67, i32* %8)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i64, i64* %7, align 8
  store i64 %72, i64* %3, align 8
  br label %196

73:                                               ; preds = %60
  %74 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %78 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %79, align 8
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %82 = bitcast %struct.e1000_hw* %81 to %struct.e1000_hw.0*
  %83 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i64 %80(%struct.e1000_hw.0* %82, i32 %83, i32 %84)
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %73
  %89 = load i64, i64* %7, align 8
  store i64 %89, i64* %3, align 8
  br label %196

90:                                               ; preds = %73
  br label %130

91:                                               ; preds = %54
  %92 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %93 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @e1000_smart_speed_off, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %129

97:                                               ; preds = %91
  %98 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %99 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %100, align 8
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %103 = bitcast %struct.e1000_hw* %102 to %struct.e1000_hw.1*
  %104 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %105 = call i64 %101(%struct.e1000_hw.1* %103, i32 %104, i32* %8)
  store i64 %105, i64* %7, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %97
  %109 = load i64, i64* %7, align 8
  store i64 %109, i64* %3, align 8
  br label %196

110:                                              ; preds = %97
  %111 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %116 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %117, align 8
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %120 = bitcast %struct.e1000_hw* %119 to %struct.e1000_hw.0*
  %121 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i64 %118(%struct.e1000_hw.0* %120, i32 %121, i32 %122)
  store i64 %123, i64* %7, align 8
  %124 = load i64, i64* %7, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %110
  %127 = load i64, i64* %7, align 8
  store i64 %127, i64* %3, align 8
  br label %196

128:                                              ; preds = %110
  br label %129

129:                                              ; preds = %128, %91
  br label %130

130:                                              ; preds = %129, %90
  br label %194

131:                                              ; preds = %33
  %132 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %133 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @E1000_ALL_SPEED_DUPLEX, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %149, label %137

137:                                              ; preds = %131
  %138 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %139 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @E1000_ALL_NOT_GIG, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %145 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @E1000_ALL_10_SPEED, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %193

149:                                              ; preds = %143, %137, %131
  %150 = load i32, i32* @IGP02E1000_PM_D3_LPLU, align 4
  %151 = load i32, i32* %8, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %8, align 4
  %153 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %154 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %155, align 8
  %157 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %158 = bitcast %struct.e1000_hw* %157 to %struct.e1000_hw.0*
  %159 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %160 = load i32, i32* %8, align 4
  %161 = call i64 %156(%struct.e1000_hw.0* %158, i32 %159, i32 %160)
  store i64 %161, i64* %7, align 8
  %162 = load i64, i64* %7, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %149
  %165 = load i64, i64* %7, align 8
  store i64 %165, i64* %3, align 8
  br label %196

166:                                              ; preds = %149
  %167 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %168 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %169, align 8
  %171 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %172 = bitcast %struct.e1000_hw* %171 to %struct.e1000_hw.1*
  %173 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %174 = call i64 %170(%struct.e1000_hw.1* %172, i32 %173, i32* %8)
  store i64 %174, i64* %7, align 8
  %175 = load i64, i64* %7, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %166
  %178 = load i64, i64* %7, align 8
  store i64 %178, i64* %3, align 8
  br label %196

179:                                              ; preds = %166
  %180 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %8, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %8, align 4
  %184 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %185 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %186, align 8
  %188 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %189 = bitcast %struct.e1000_hw* %188 to %struct.e1000_hw.0*
  %190 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i64 %187(%struct.e1000_hw.0* %189, i32 %190, i32 %191)
  store i64 %192, i64* %7, align 8
  br label %193

193:                                              ; preds = %179, %143
  br label %194

194:                                              ; preds = %193, %130
  %195 = load i64, i64* %7, align 8
  store i64 %195, i64* %3, align 8
  br label %196

196:                                              ; preds = %194, %177, %164, %126, %108, %88, %71, %52, %31, %18
  %197 = load i64, i64* %3, align 8
  ret i64 %197
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
