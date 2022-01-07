; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_init_phy_workarounds_pchlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_init_phy_workarounds_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@E1000_FWSM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"e1000_init_phy_workarounds_pchlan\00", align 1
@TRUE = common dso_local global i32 0, align 4
@e1000_ulp_state_unknown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to initialize PHY flow\0A\00", align 1
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_FORCE_SMBUS = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Required LANPHYPC toggle blocked by ME\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Reset blocked by ME\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"ME blocked access to PHY after reset\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_phy_workarounds_pchlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_phy_workarounds_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = load i32, i32* @E1000_FWSM, align 4
  %8 = call i32 @E1000_READ_REG(%struct.e1000_hw* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = load i32, i32* @TRUE, align 4
  %12 = call i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw* %10, i32 %11)
  %13 = load i32, i32* @e1000_ulp_state_unknown, align 4
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @e1000_disable_ulp_lpt_lp(%struct.e1000_hw* %18, i32 %19)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %24, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = bitcast %struct.e1000_hw* %26 to %struct.e1000_hw.2*
  %28 = call i64 %25(%struct.e1000_hw.2* %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %165

33:                                               ; preds = %1
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %120 [
    i32 130, label %38
    i32 129, label %38
    i32 131, label %38
    i32 132, label %55
    i32 128, label %61
  ]

38:                                               ; preds = %33, %33, %33
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %40 = call i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %121

43:                                               ; preds = %38
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %45 = load i32, i32* @E1000_CTRL_EXT, align 4
  %46 = call i32 @E1000_READ_REG(%struct.e1000_hw* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = load i32, i32* @E1000_CTRL_EXT, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %50, i32 %51, i32 %52)
  %54 = call i32 @msec_delay(i32 50)
  br label %55

55:                                               ; preds = %33, %43
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = call i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %121

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %33, %60
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %121

73:                                               ; preds = %67, %61
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %77, align 8
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %80 = bitcast %struct.e1000_hw* %79 to %struct.e1000_hw.0*
  %81 = call i64 %78(%struct.e1000_hw.0* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i64, i64* @E1000_ERR_PHY, align 8
  %86 = sub nsw i64 0, %85
  store i64 %86, i64* %5, align 8
  br label %121

87:                                               ; preds = %73
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %89 = call i32 @e1000_toggle_lanphypc_pch_lpt(%struct.e1000_hw* %88)
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %91 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %93, 130
  br i1 %94, label %95, label %119

95:                                               ; preds = %87
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %97 = call i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %121

100:                                              ; preds = %95
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %102 = load i32, i32* @E1000_CTRL_EXT, align 4
  %103 = call i32 @E1000_READ_REG(%struct.e1000_hw* %101, i32 %102)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %3, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %3, align 4
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %109 = load i32, i32* @E1000_CTRL_EXT, align 4
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %108, i32 %109, i32 %110)
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %113 = call i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %100
  br label %121

116:                                              ; preds = %100
  %117 = load i64, i64* @E1000_ERR_PHY, align 8
  %118 = sub nsw i64 0, %117
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %116, %87
  br label %121

120:                                              ; preds = %33
  br label %121

121:                                              ; preds = %120, %119, %115, %99, %83, %72, %59, %42
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %123 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %125, align 8
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %128 = bitcast %struct.e1000_hw* %127 to %struct.e1000_hw.1*
  %129 = call i32 %126(%struct.e1000_hw.1* %128)
  %130 = load i64, i64* %5, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %164, label %132

132:                                              ; preds = %121
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %134 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %136, align 8
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %139 = bitcast %struct.e1000_hw* %138 to %struct.e1000_hw.0*
  %140 = call i64 %137(%struct.e1000_hw.0* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = call i32 @ERROR_REPORT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %165

144:                                              ; preds = %132
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %146 = call i64 @e1000_phy_hw_reset_generic(%struct.e1000_hw* %145)
  store i64 %146, i64* %5, align 8
  %147 = load i64, i64* %5, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %165

150:                                              ; preds = %144
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %152 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %154, align 8
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %157 = bitcast %struct.e1000_hw* %156 to %struct.e1000_hw.0*
  %158 = call i64 %155(%struct.e1000_hw.0* %157)
  store i64 %158, i64* %5, align 8
  %159 = load i64, i64* %5, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %150
  %162 = call i32 @ERROR_REPORT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %150
  br label %164

164:                                              ; preds = %163, %121
  br label %165

165:                                              ; preds = %164, %149, %142, %31
  %166 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %167 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 132
  br i1 %170, label %171, label %181

171:                                              ; preds = %165
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %171
  %177 = call i32 @msec_delay(i32 10)
  %178 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %179 = load i32, i32* @FALSE, align 4
  %180 = call i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw* %178, i32 %179)
  br label %181

181:                                              ; preds = %176, %171, %165
  %182 = load i64, i64* %5, align 8
  ret i64 %182
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_disable_ulp_lpt_lp(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @e1000_toggle_lanphypc_pch_lpt(%struct.e1000_hw*) #1

declare dso_local i32 @ERROR_REPORT(i8*) #1

declare dso_local i64 @e1000_phy_hw_reset_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
