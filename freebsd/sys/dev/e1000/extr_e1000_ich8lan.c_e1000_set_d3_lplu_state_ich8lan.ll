; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_set_d3_lplu_state_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_set_d3_lplu_state_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_phy_info }
%struct.TYPE_3__ = type { i64 }
%struct.e1000_phy_info = type { i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"e1000_set_d3_lplu_state_ich8lan\00", align 1
@E1000_PHY_CTRL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_NOND0A_LPLU = common dso_local global i32 0, align 4
@e1000_phy_igp_3 = common dso_local global i64 0, align 8
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@E1000_ALL_SPEED_DUPLEX = common dso_local global i64 0, align 8
@E1000_ALL_NOT_GIG = common dso_local global i64 0, align 8
@E1000_ALL_10_SPEED = common dso_local global i64 0, align 8
@e1000_ich8lan = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_set_d3_lplu_state_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_d3_lplu_state_ich8lan(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_phy_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  store %struct.e1000_phy_info* %11, %struct.e1000_phy_info** %6, align 8
  %12 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %12, i64* %8, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %15 = load i32, i32* @E1000_PHY_CTRL, align 4
  %16 = call i32 @E1000_READ_REG(%struct.e1000_hw* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %112, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @E1000_PHY_CTRL_NOND0A_LPLU, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %25 = load i32, i32* @E1000_PHY_CTRL, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %24, i32 %25, i32 %26)
  %28 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %29 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @e1000_phy_igp_3, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %34, i64* %3, align 8
  br label %185

35:                                               ; preds = %19
  %36 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %37 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @e1000_smart_speed_on, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %35
  %42 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %43 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %44, align 8
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %47 = bitcast %struct.e1000_hw* %46 to %struct.e1000_hw.1*
  %48 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %49 = call i64 %45(%struct.e1000_hw.1* %47, i32 %48, i32* %9)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %3, align 8
  br label %185

54:                                               ; preds = %41
  %55 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %59 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %60, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %63 = bitcast %struct.e1000_hw* %62 to %struct.e1000_hw.0*
  %64 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i64 %61(%struct.e1000_hw.0* %63, i32 %64, i32 %65)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %54
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %3, align 8
  br label %185

71:                                               ; preds = %54
  br label %111

72:                                               ; preds = %35
  %73 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %74 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @e1000_smart_speed_off, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %110

78:                                               ; preds = %72
  %79 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %80 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %81, align 8
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %84 = bitcast %struct.e1000_hw* %83 to %struct.e1000_hw.1*
  %85 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %86 = call i64 %82(%struct.e1000_hw.1* %84, i32 %85, i32* %9)
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i64, i64* %8, align 8
  store i64 %90, i64* %3, align 8
  br label %185

91:                                               ; preds = %78
  %92 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %97 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %98, align 8
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %101 = bitcast %struct.e1000_hw* %100 to %struct.e1000_hw.0*
  %102 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i64 %99(%struct.e1000_hw.0* %101, i32 %102, i32 %103)
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %91
  %108 = load i64, i64* %8, align 8
  store i64 %108, i64* %3, align 8
  br label %185

109:                                              ; preds = %91
  br label %110

110:                                              ; preds = %109, %72
  br label %111

111:                                              ; preds = %110, %71
  br label %183

112:                                              ; preds = %2
  %113 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %114 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @E1000_ALL_SPEED_DUPLEX, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %130, label %118

118:                                              ; preds = %112
  %119 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %120 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @E1000_ALL_NOT_GIG, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %126 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @E1000_ALL_10_SPEED, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %182

130:                                              ; preds = %124, %118, %112
  %131 = load i32, i32* @E1000_PHY_CTRL_NOND0A_LPLU, align 4
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %7, align 4
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %135 = load i32, i32* @E1000_PHY_CTRL, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %134, i32 %135, i32 %136)
  %138 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %139 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @e1000_phy_igp_3, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %130
  %144 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %144, i64* %3, align 8
  br label %185

145:                                              ; preds = %130
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %147 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @e1000_ich8lan, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %154 = call i32 @e1000_gig_downshift_workaround_ich8lan(%struct.e1000_hw* %153)
  br label %155

155:                                              ; preds = %152, %145
  %156 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %157 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %158, align 8
  %160 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %161 = bitcast %struct.e1000_hw* %160 to %struct.e1000_hw.1*
  %162 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %163 = call i64 %159(%struct.e1000_hw.1* %161, i32 %162, i32* %9)
  store i64 %163, i64* %8, align 8
  %164 = load i64, i64* %8, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %155
  %167 = load i64, i64* %8, align 8
  store i64 %167, i64* %3, align 8
  br label %185

168:                                              ; preds = %155
  %169 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %9, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %9, align 4
  %173 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %174 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %175, align 8
  %177 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %178 = bitcast %struct.e1000_hw* %177 to %struct.e1000_hw.0*
  %179 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i64 %176(%struct.e1000_hw.0* %178, i32 %179, i32 %180)
  store i64 %181, i64* %8, align 8
  br label %182

182:                                              ; preds = %168, %124
  br label %183

183:                                              ; preds = %182, %111
  %184 = load i64, i64* %8, align 8
  store i64 %184, i64* %3, align 8
  br label %185

185:                                              ; preds = %183, %166, %143, %107, %89, %69, %52, %33
  %186 = load i64, i64* %3, align 8
  ret i64 %186
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
