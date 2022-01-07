; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_copper_link_setup_igp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_copper_link_setup_igp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_phy_info }
%struct.TYPE_3__ = type { i64 }
%struct.e1000_phy_info = type { i64, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32)*, i64 (%struct.e1000_hw.3*, i32)*, i64 (%struct.e1000_hw.4*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.e1000_hw.4 = type opaque

@.str = private unnamed_addr constant [28 x i8] c"e1000_copper_link_setup_igp\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error resetting the PHY.\0A\00", align 1
@e1000_phy_igp = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Error Disabling LPLU D3\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Error Disabling LPLU D0\0A\00", align 1
@IGP01E1000_PHY_PORT_CTRL = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_AUTO_MDIX = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_FORCE_MDI_MDIX = common dso_local global i32 0, align 4
@ADVERTISE_1000_FULL = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@PHY_1000T_CTRL = common dso_local global i32 0, align 4
@CR_1000T_MS_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_copper_link_setup_igp(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %4, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  %14 = load i64 (%struct.e1000_hw.4*)*, i64 (%struct.e1000_hw.4*)** %13, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = bitcast %struct.e1000_hw* %15 to %struct.e1000_hw.4*
  %17 = call i64 %14(%struct.e1000_hw.4* %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %2, align 8
  br label %198

23:                                               ; preds = %1
  %24 = call i32 @msec_delay(i32 100)
  %25 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @e1000_phy_igp, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i64 (%struct.e1000_hw.3*, i32)*, i64 (%struct.e1000_hw.3*, i32)** %34, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = bitcast %struct.e1000_hw* %36 to %struct.e1000_hw.3*
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i64 %35(%struct.e1000_hw.3* %37, i32 %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i64, i64* %5, align 8
  store i64 %44, i64* %2, align 8
  br label %198

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %23
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64 (%struct.e1000_hw.2*, i32)*, i64 (%struct.e1000_hw.2*, i32)** %50, align 8
  %52 = icmp ne i64 (%struct.e1000_hw.2*, i32)* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %46
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64 (%struct.e1000_hw.2*, i32)*, i64 (%struct.e1000_hw.2*, i32)** %57, align 8
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = bitcast %struct.e1000_hw* %59 to %struct.e1000_hw.2*
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i64 %58(%struct.e1000_hw.2* %60, i32 %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i64, i64* %5, align 8
  store i64 %67, i64* %2, align 8
  br label %198

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %46
  %70 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %71 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %72, align 8
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = bitcast %struct.e1000_hw* %74 to %struct.e1000_hw.1*
  %76 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %77 = call i64 %73(%struct.e1000_hw.1* %75, i32 %76, i32* %6)
  store i64 %77, i64* %5, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i64, i64* %5, align 8
  store i64 %81, i64* %2, align 8
  br label %198

82:                                               ; preds = %69
  %83 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %100 [
    i32 1, label %90
    i32 2, label %95
    i32 0, label %99
  ]

90:                                               ; preds = %82
  %91 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %104

95:                                               ; preds = %82
  %96 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %104

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %82, %99
  %101 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %95, %90
  %105 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %106 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %107, align 8
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %110 = bitcast %struct.e1000_hw* %109 to %struct.e1000_hw.0*
  %111 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i64 %108(%struct.e1000_hw.0* %110, i32 %111, i32 %112)
  store i64 %113, i64* %5, align 8
  %114 = load i64, i64* %5, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = load i64, i64* %5, align 8
  store i64 %117, i64* %2, align 8
  br label %198

118:                                              ; preds = %104
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %196

124:                                              ; preds = %118
  %125 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %126 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ADVERTISE_1000_FULL, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %193

130:                                              ; preds = %124
  %131 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %132 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %133, align 8
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %136 = bitcast %struct.e1000_hw* %135 to %struct.e1000_hw.1*
  %137 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %138 = call i64 %134(%struct.e1000_hw.1* %136, i32 %137, i32* %6)
  store i64 %138, i64* %5, align 8
  %139 = load i64, i64* %5, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %130
  %142 = load i64, i64* %5, align 8
  store i64 %142, i64* %2, align 8
  br label %198

143:                                              ; preds = %130
  %144 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %6, align 4
  %148 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %149 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %150, align 8
  %152 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %153 = bitcast %struct.e1000_hw* %152 to %struct.e1000_hw.0*
  %154 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i64 %151(%struct.e1000_hw.0* %153, i32 %154, i32 %155)
  store i64 %156, i64* %5, align 8
  %157 = load i64, i64* %5, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %143
  %160 = load i64, i64* %5, align 8
  store i64 %160, i64* %2, align 8
  br label %198

161:                                              ; preds = %143
  %162 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %163 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %164, align 8
  %166 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %167 = bitcast %struct.e1000_hw* %166 to %struct.e1000_hw.1*
  %168 = load i32, i32* @PHY_1000T_CTRL, align 4
  %169 = call i64 %165(%struct.e1000_hw.1* %167, i32 %168, i32* %6)
  store i64 %169, i64* %5, align 8
  %170 = load i64, i64* %5, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %161
  %173 = load i64, i64* %5, align 8
  store i64 %173, i64* %2, align 8
  br label %198

174:                                              ; preds = %161
  %175 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %176 = xor i32 %175, -1
  %177 = load i32, i32* %6, align 4
  %178 = and i32 %177, %176
  store i32 %178, i32* %6, align 4
  %179 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %180 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %181, align 8
  %183 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %184 = bitcast %struct.e1000_hw* %183 to %struct.e1000_hw.0*
  %185 = load i32, i32* @PHY_1000T_CTRL, align 4
  %186 = load i32, i32* %6, align 4
  %187 = call i64 %182(%struct.e1000_hw.0* %184, i32 %185, i32 %186)
  store i64 %187, i64* %5, align 8
  %188 = load i64, i64* %5, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %174
  %191 = load i64, i64* %5, align 8
  store i64 %191, i64* %2, align 8
  br label %198

192:                                              ; preds = %174
  br label %193

193:                                              ; preds = %192, %124
  %194 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %195 = call i64 @e1000_set_master_slave_mode(%struct.e1000_hw* %194)
  store i64 %195, i64* %5, align 8
  br label %196

196:                                              ; preds = %193, %118
  %197 = load i64, i64* %5, align 8
  store i64 %197, i64* %2, align 8
  br label %198

198:                                              ; preds = %196, %190, %172, %159, %141, %116, %80, %65, %42, %20
  %199 = load i64, i64* %2, align 8
  ret i64 %199
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @e1000_set_master_slave_mode(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
