; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_set_d3_lplu_state_82541.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_set_d3_lplu_state_82541.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_phy_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_phy_info = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [30 x i8] c"e1000_set_d3_lplu_state_82541\00", align 1
@IGP01E1000_GMII_FIFO = common dso_local global i32 0, align 4
@IGP01E1000_GMII_FLEX_SPD = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@E1000_ALL_SPEED_DUPLEX = common dso_local global i64 0, align 8
@E1000_ALL_NOT_GIG = common dso_local global i64 0, align 8
@E1000_ALL_10_SPEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_set_d3_lplu_state_82541 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_d3_lplu_state_82541(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_phy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %5, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %16 [
    i32 129, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %2, %2
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @e1000_set_d3_lplu_state_generic(%struct.e1000_hw* %17, i32 %18)
  store i64 %19, i64* %6, align 8
  br label %187

20:                                               ; preds = %15
  %21 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %23, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.1*
  %27 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %28 = call i64 %24(%struct.e1000_hw.1* %26, i32 %27, i32* %7)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %187

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %125, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @IGP01E1000_GMII_FLEX_SPD, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %41 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %42, align 8
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = bitcast %struct.e1000_hw* %44 to %struct.e1000_hw.0*
  %46 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 %43(%struct.e1000_hw.0* %45, i32 %46, i32 %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  br label %187

52:                                               ; preds = %35
  %53 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %54 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @e1000_smart_speed_on, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %52
  %59 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %60 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %61, align 8
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %64 = bitcast %struct.e1000_hw* %63 to %struct.e1000_hw.1*
  %65 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %66 = call i64 %62(%struct.e1000_hw.1* %64, i32 %65, i32* %7)
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %187

70:                                               ; preds = %58
  %71 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %75 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %76, align 8
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %79 = bitcast %struct.e1000_hw* %78 to %struct.e1000_hw.0*
  %80 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i64 %77(%struct.e1000_hw.0* %79, i32 %80, i32 %81)
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %6, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  br label %187

86:                                               ; preds = %70
  br label %124

87:                                               ; preds = %52
  %88 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %89 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @e1000_smart_speed_off, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %87
  %94 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %95 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %96, align 8
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %99 = bitcast %struct.e1000_hw* %98 to %struct.e1000_hw.1*
  %100 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %101 = call i64 %97(%struct.e1000_hw.1* %99, i32 %100, i32* %7)
  store i64 %101, i64* %6, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %187

105:                                              ; preds = %93
  %106 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %111 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %112, align 8
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %115 = bitcast %struct.e1000_hw* %114 to %struct.e1000_hw.0*
  %116 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i64 %113(%struct.e1000_hw.0* %115, i32 %116, i32 %117)
  store i64 %118, i64* %6, align 8
  %119 = load i64, i64* %6, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %105
  br label %187

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122, %87
  br label %124

124:                                              ; preds = %123, %86
  br label %186

125:                                              ; preds = %32
  %126 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %127 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @E1000_ALL_SPEED_DUPLEX, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %143, label %131

131:                                              ; preds = %125
  %132 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %133 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @E1000_ALL_NOT_GIG, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %139 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @E1000_ALL_10_SPEED, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %185

143:                                              ; preds = %137, %131, %125
  %144 = load i32, i32* @IGP01E1000_GMII_FLEX_SPD, align 4
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %7, align 4
  %147 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %148 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %149, align 8
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %152 = bitcast %struct.e1000_hw* %151 to %struct.e1000_hw.0*
  %153 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i64 %150(%struct.e1000_hw.0* %152, i32 %153, i32 %154)
  store i64 %155, i64* %6, align 8
  %156 = load i64, i64* %6, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %143
  br label %187

159:                                              ; preds = %143
  %160 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %161 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %162, align 8
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %165 = bitcast %struct.e1000_hw* %164 to %struct.e1000_hw.1*
  %166 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %167 = call i64 %163(%struct.e1000_hw.1* %165, i32 %166, i32* %7)
  store i64 %167, i64* %6, align 8
  %168 = load i64, i64* %6, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %159
  br label %187

171:                                              ; preds = %159
  %172 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %7, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %7, align 4
  %176 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %177 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %178, align 8
  %180 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %181 = bitcast %struct.e1000_hw* %180 to %struct.e1000_hw.0*
  %182 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %183 = load i32, i32* %7, align 4
  %184 = call i64 %179(%struct.e1000_hw.0* %181, i32 %182, i32 %183)
  store i64 %184, i64* %6, align 8
  br label %185

185:                                              ; preds = %171, %137
  br label %186

186:                                              ; preds = %185, %124
  br label %187

187:                                              ; preds = %186, %170, %158, %121, %104, %85, %69, %51, %31, %16
  %188 = load i64, i64* %6, align 8
  ret i64 %188
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_set_d3_lplu_state_generic(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
