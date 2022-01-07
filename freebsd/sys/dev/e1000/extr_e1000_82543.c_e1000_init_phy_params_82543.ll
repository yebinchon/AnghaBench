; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_init_phy_params_82543.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_init_phy_params_82543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_phy_info }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_phy_info = type { i64, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.e1000_hw.0 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"e1000_init_phy_params_82543\00", align 1
@e1000_media_type_copper = common dso_local global i64 0, align 8
@e1000_phy_none = common dso_local global i32 0, align 4
@e1000_power_up_phy_copper = common dso_local global i32 0, align 4
@e1000_power_down_phy_copper = common dso_local global i32 0, align 4
@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i32 0, align 4
@e1000_phy_m88 = common dso_local global i32 0, align 4
@e1000_check_polarity_m88 = common dso_local global i32 0, align 4
@e1000_phy_sw_reset_generic = common dso_local global i32 0, align 4
@e1000_phy_force_speed_duplex_82543 = common dso_local global i32 0, align 4
@e1000_get_cable_length_m88 = common dso_local global i32 0, align 4
@e1000_get_cfg_done_generic = common dso_local global i32 0, align 4
@e1000_read_phy_reg_82543 = common dso_local global i32 0, align 4
@e1000_read_phy_reg_m88 = common dso_local global i32 0, align 4
@e1000_write_phy_reg_82543 = common dso_local global i32 0, align 4
@e1000_write_phy_reg_m88 = common dso_local global i32 0, align 4
@e1000_get_phy_info_m88 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Resetting PHY during init failed.\0A\00", align 1
@M88E1000_E_PHY_ID = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@M88E1000_I_PHY_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_phy_params_82543 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_phy_params_82543(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 1
  store %struct.e1000_phy_info* %6, %struct.e1000_phy_info** %3, align 8
  %7 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %7, i64* %4, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_media_type_copper, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @e1000_phy_none, align 4
  %17 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  br label %154

19:                                               ; preds = %1
  %20 = load i32, i32* @e1000_power_up_phy_copper, align 4
  %21 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 10
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @e1000_power_down_phy_copper, align 4
  %25 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 9
  store i32 %24, i32* %27, align 8
  br label %28

28:                                               ; preds = %19
  %29 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %29, i32 0, i32 1
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 4
  %32 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %34, i32 0, i32 2
  store i32 10000, i32* %35, align 4
  %36 = load i32, i32* @e1000_phy_m88, align 4
  %37 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %38 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @e1000_check_polarity_m88, align 4
  %40 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 8
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @e1000_phy_sw_reset_generic, align 4
  %44 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 7
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @e1000_phy_force_speed_duplex_82543, align 4
  %48 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 6
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @e1000_get_cable_length_m88, align 4
  %52 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @e1000_get_cfg_done_generic, align 4
  %56 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 4
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 129
  br i1 %63, label %64, label %66

64:                                               ; preds = %28
  %65 = load i32, i32* @e1000_read_phy_reg_82543, align 4
  br label %68

66:                                               ; preds = %28
  %67 = load i32, i32* @e1000_read_phy_reg_m88, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %71 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 8
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %74 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 129
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i64 (%struct.e1000_hw*)* @e1000_phy_hw_reset_82543, i64 (%struct.e1000_hw*)* @e1000_phy_hw_reset_generic
  %80 = bitcast i64 (%struct.e1000_hw*)* %79 to i64 (%struct.e1000_hw.0*)*
  %81 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i64 (%struct.e1000_hw.0*)* %80, i64 (%struct.e1000_hw.0*)** %83, align 8
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 129
  br i1 %88, label %89, label %91

89:                                               ; preds = %68
  %90 = load i32, i32* @e1000_write_phy_reg_82543, align 4
  br label %93

91:                                               ; preds = %68
  %92 = load i32, i32* @e1000_write_phy_reg_m88, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @e1000_get_phy_info_m88, align 4
  %99 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %100 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 8
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %103 = call i32 @e1000_init_phy_disabled_82543(%struct.e1000_hw* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %93
  %106 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %107 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %108, align 8
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %111 = bitcast %struct.e1000_hw* %110 to %struct.e1000_hw.0*
  %112 = call i64 %109(%struct.e1000_hw.0* %111)
  store i64 %112, i64* %4, align 8
  %113 = load i64, i64* %4, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %154

117:                                              ; preds = %105
  %118 = call i32 @msec_delay(i32 20)
  br label %119

119:                                              ; preds = %117, %93
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %121 = call i64 @e1000_get_phy_id(%struct.e1000_hw* %120)
  store i64 %121, i64* %4, align 8
  %122 = load i64, i64* %4, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %154

125:                                              ; preds = %119
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %127 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  switch i32 %129, label %150 [
    i32 129, label %130
    i32 128, label %140
  ]

130:                                              ; preds = %125
  %131 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %132 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @M88E1000_E_PHY_ID, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i64, i64* @E1000_ERR_PHY, align 8
  %138 = sub nsw i64 0, %137
  store i64 %138, i64* %4, align 8
  br label %154

139:                                              ; preds = %130
  br label %153

140:                                              ; preds = %125
  %141 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %142 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @M88E1000_I_PHY_ID, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i64, i64* @E1000_ERR_PHY, align 8
  %148 = sub nsw i64 0, %147
  store i64 %148, i64* %4, align 8
  br label %154

149:                                              ; preds = %140
  br label %153

150:                                              ; preds = %125
  %151 = load i64, i64* @E1000_ERR_PHY, align 8
  %152 = sub nsw i64 0, %151
  store i64 %152, i64* %4, align 8
  br label %154

153:                                              ; preds = %149, %139
  br label %154

154:                                              ; preds = %153, %150, %146, %136, %124, %115, %15
  %155 = load i64, i64* %4, align 8
  ret i64 %155
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_phy_hw_reset_82543(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_phy_hw_reset_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_phy_disabled_82543(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @e1000_get_phy_id(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
