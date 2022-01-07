; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_set_d0_lplu_state_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_set_d0_lplu_state_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_phy_info }
%struct.TYPE_3__ = type { i64 }
%struct.e1000_phy_info = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"e1000_set_d0_lplu_state_ich8lan\00", align 1
@e1000_phy_ife = common dso_local global i64 0, align 8
@E1000_PHY_CTRL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_D0A_LPLU = common dso_local global i32 0, align 4
@e1000_phy_igp_3 = common dso_local global i64 0, align 8
@e1000_ich8lan = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_set_d0_lplu_state_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_d0_lplu_state_ich8lan(%struct.e1000_hw* %0, i32 %1) #0 {
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
  %14 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %15 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_phy_ife, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %20, i64* %3, align 8
  br label %179

21:                                               ; preds = %2
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %23 = load i32, i32* @E1000_PHY_CTRL, align 4
  %24 = call i32 @E1000_READ_REG(%struct.e1000_hw* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %84

27:                                               ; preds = %21
  %28 = load i32, i32* @E1000_PHY_CTRL_D0A_LPLU, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %32 = load i32, i32* @E1000_PHY_CTRL, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %31, i32 %32, i32 %33)
  %35 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @e1000_phy_igp_3, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %41, i64* %3, align 8
  br label %179

42:                                               ; preds = %27
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @e1000_ich8lan, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %51 = call i32 @e1000_gig_downshift_workaround_ich8lan(%struct.e1000_hw* %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %54 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %55, align 8
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = bitcast %struct.e1000_hw* %57 to %struct.e1000_hw.1*
  %59 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %60 = call i64 %56(%struct.e1000_hw.1* %58, i32 %59, i32* %9)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %3, align 8
  br label %179

65:                                               ; preds = %52
  %66 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %71 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %72, align 8
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %75 = bitcast %struct.e1000_hw* %74 to %struct.e1000_hw.0*
  %76 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i64 %73(%struct.e1000_hw.0* %75, i32 %76, i32 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %65
  %82 = load i64, i64* %8, align 8
  store i64 %82, i64* %3, align 8
  br label %179

83:                                               ; preds = %65
  br label %177

84:                                               ; preds = %21
  %85 = load i32, i32* @E1000_PHY_CTRL_D0A_LPLU, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %90 = load i32, i32* @E1000_PHY_CTRL, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %89, i32 %90, i32 %91)
  %93 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %94 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @e1000_phy_igp_3, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %99, i64* %3, align 8
  br label %179

100:                                              ; preds = %84
  %101 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %102 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @e1000_smart_speed_on, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %137

106:                                              ; preds = %100
  %107 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %108 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %109, align 8
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %112 = bitcast %struct.e1000_hw* %111 to %struct.e1000_hw.1*
  %113 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %114 = call i64 %110(%struct.e1000_hw.1* %112, i32 %113, i32* %9)
  store i64 %114, i64* %8, align 8
  %115 = load i64, i64* %8, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = load i64, i64* %8, align 8
  store i64 %118, i64* %3, align 8
  br label %179

119:                                              ; preds = %106
  %120 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  %123 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %124 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %125, align 8
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %128 = bitcast %struct.e1000_hw* %127 to %struct.e1000_hw.0*
  %129 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i64 %126(%struct.e1000_hw.0* %128, i32 %129, i32 %130)
  store i64 %131, i64* %8, align 8
  %132 = load i64, i64* %8, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %119
  %135 = load i64, i64* %8, align 8
  store i64 %135, i64* %3, align 8
  br label %179

136:                                              ; preds = %119
  br label %176

137:                                              ; preds = %100
  %138 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %139 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @e1000_smart_speed_off, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %175

143:                                              ; preds = %137
  %144 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %145 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %146, align 8
  %148 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %149 = bitcast %struct.e1000_hw* %148 to %struct.e1000_hw.1*
  %150 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %151 = call i64 %147(%struct.e1000_hw.1* %149, i32 %150, i32* %9)
  store i64 %151, i64* %8, align 8
  %152 = load i64, i64* %8, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = load i64, i64* %8, align 8
  store i64 %155, i64* %3, align 8
  br label %179

156:                                              ; preds = %143
  %157 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %9, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %9, align 4
  %161 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %162 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %163, align 8
  %165 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %166 = bitcast %struct.e1000_hw* %165 to %struct.e1000_hw.0*
  %167 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i64 %164(%struct.e1000_hw.0* %166, i32 %167, i32 %168)
  store i64 %169, i64* %8, align 8
  %170 = load i64, i64* %8, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %156
  %173 = load i64, i64* %8, align 8
  store i64 %173, i64* %3, align 8
  br label %179

174:                                              ; preds = %156
  br label %175

175:                                              ; preds = %174, %137
  br label %176

176:                                              ; preds = %175, %136
  br label %177

177:                                              ; preds = %176, %83
  %178 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %178, i64* %3, align 8
  br label %179

179:                                              ; preds = %177, %172, %154, %134, %117, %98, %81, %63, %40, %19
  %180 = load i64, i64* %3, align 8
  ret i64 %180
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
