; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_check_for_copper_link_82543.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_check_for_copper_link_82543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i64*, i64*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [34 x i8] c"e1000_check_for_copper_link_82543\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@E1000_ALL_10_SPEED = common dso_local global i32 0, align 4
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@E1000_ICS = common dso_local global i32 0, align 4
@E1000_ICS_LSC = common dso_local global i32 0, align 4
@E1000_IMS = common dso_local global i32 0, align 4
@IMS_ENABLE_MASK = common dso_local global i32 0, align 4
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Error configuring MAC to PHY settings\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Error getting link speed and duplex\0A\00", align 1
@SPEED_1000 = common dso_local global i64 0, align 8
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_SBP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_check_for_copper_link_82543 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_check_for_copper_link_82543(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  store %struct.e1000_mac_info* %12, %struct.e1000_mac_info** %4, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %19, i32* %7, align 4
  br label %162

20:                                               ; preds = %1
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = call i32 @e1000_phy_has_link_generic(%struct.e1000_hw* %21, i32 1, i32 0, i32* %10)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %162

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %162

30:                                               ; preds = %26
  %31 = load i64, i64* @FALSE, align 8
  %32 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %33 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = call i32 @e1000_check_downshift_generic(%struct.e1000_hw* %34)
  %36 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %37 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %70, label %40

40:                                               ; preds = %30
  %41 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @E1000_ALL_10_SPEED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = load i32, i32* @E1000_IMC, align 4
  %50 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %48, i32 %49, i32 -1)
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = call i32 @e1000_polarity_reversal_workaround_82543(%struct.e1000_hw* %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = load i32, i32* @E1000_ICR, align 4
  %55 = call i32 @E1000_READ_REG(%struct.e1000_hw* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = load i32, i32* @E1000_ICS, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @E1000_ICS_LSC, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %56, i32 %57, i32 %61)
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %64 = load i32, i32* @E1000_IMS, align 4
  %65 = load i32, i32* @IMS_ENABLE_MASK, align 4
  %66 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %47, %40
  %68 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %162

70:                                               ; preds = %30
  %71 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %72 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @e1000_82544, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %80, align 8
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = bitcast %struct.e1000_hw* %82 to %struct.e1000_hw.1*
  %84 = call i32 %81(%struct.e1000_hw.1* %83)
  br label %93

85:                                               ; preds = %70
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %87 = call i32 @e1000_config_mac_to_phy_82543(%struct.e1000_hw* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %162

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %76
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = call i32 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %102 = call i64 @e1000_tbi_compatibility_enabled_82543(%struct.e1000_hw* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %161

104:                                              ; preds = %100
  %105 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %106 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32 (%struct.e1000_hw.0*, i64*, i64*)*, i32 (%struct.e1000_hw.0*, i64*, i64*)** %107, align 8
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %110 = bitcast %struct.e1000_hw* %109 to %struct.e1000_hw.0*
  %111 = call i32 %108(%struct.e1000_hw.0* %110, i64* %8, i64* %9)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %164

117:                                              ; preds = %104
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* @SPEED_1000, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %117
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %123 = call i64 @e1000_tbi_sbp_enabled_82543(%struct.e1000_hw* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %121
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %127 = load i64, i64* @FALSE, align 8
  %128 = call i32 @e1000_set_tbi_sbp_82543(%struct.e1000_hw* %126, i64 %127)
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %130 = load i32, i32* @E1000_RCTL, align 4
  %131 = call i32 @E1000_READ_REG(%struct.e1000_hw* %129, i32 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* @E1000_RCTL_SBP, align 4
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %6, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %6, align 4
  %136 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %137 = load i32, i32* @E1000_RCTL, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %125, %121
  br label %160

141:                                              ; preds = %117
  %142 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %143 = call i64 @e1000_tbi_sbp_enabled_82543(%struct.e1000_hw* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %141
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %147 = load i64, i64* @TRUE, align 8
  %148 = call i32 @e1000_set_tbi_sbp_82543(%struct.e1000_hw* %146, i64 %147)
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %150 = load i32, i32* @E1000_RCTL, align 4
  %151 = call i32 @E1000_READ_REG(%struct.e1000_hw* %149, i32 %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* @E1000_RCTL_SBP, align 4
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  %155 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %156 = load i32, i32* @E1000_RCTL, align 4
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %145, %141
  br label %160

160:                                              ; preds = %159, %140
  br label %161

161:                                              ; preds = %160, %100
  br label %162

162:                                              ; preds = %161, %90, %67, %29, %25, %18
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %162, %114
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e1000_check_downshift_generic(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_polarity_reversal_workaround_82543(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_config_mac_to_phy_82543(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_tbi_compatibility_enabled_82543(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_tbi_sbp_enabled_82543(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_set_tbi_sbp_82543(%struct.e1000_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
