; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_eee_i354.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_eee_i354.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_5__, %struct.e1000_phy_info }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_phy_info = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"e1000_set_eee_i354\00", align 1
@e1000_media_type_copper = common dso_local global i64 0, align 8
@M88E1543_E_PHY_ID = common dso_local global i64 0, align 8
@M88E1512_E_PHY_ID = common dso_local global i64 0, align 8
@E1000_M88E1543_PAGE_ADDR = common dso_local global i32 0, align 4
@E1000_M88E1543_EEE_CTRL_1 = common dso_local global i32 0, align 4
@E1000_M88E1543_EEE_CTRL_1_MS = common dso_local global i32 0, align 4
@E1000_EEE_ADV_ADDR_I354 = common dso_local global i32 0, align 4
@E1000_EEE_ADV_DEV_I354 = common dso_local global i32 0, align 4
@E1000_EEE_ADV_100_SUPPORTED = common dso_local global i32 0, align 4
@E1000_EEE_ADV_1000_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_set_eee_i354(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_phy_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  store %struct.e1000_phy_info* %11, %struct.e1000_phy_info** %7, align 8
  %12 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %12, i64* %8, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_media_type_copper, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %3
  %21 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @M88E1543_E_PHY_ID, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %28 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @M88E1512_E_PHY_ID, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %3
  br label %151

33:                                               ; preds = %26, %20
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %130, label %40

40:                                               ; preds = %33
  %41 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %42 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %43, align 8
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %46 = bitcast %struct.e1000_hw* %45 to %struct.e1000_hw.0*
  %47 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %48 = call i64 %44(%struct.e1000_hw.0* %46, i32 %47, i32 18)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %151

52:                                               ; preds = %40
  %53 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %54 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %55, align 8
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = bitcast %struct.e1000_hw* %57 to %struct.e1000_hw.1*
  %59 = load i32, i32* @E1000_M88E1543_EEE_CTRL_1, align 4
  %60 = call i64 %56(%struct.e1000_hw.1* %58, i32 %59, i32* %9)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %151

64:                                               ; preds = %52
  %65 = load i32, i32* @E1000_M88E1543_EEE_CTRL_1_MS, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %69 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %70, align 8
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %73 = bitcast %struct.e1000_hw* %72 to %struct.e1000_hw.0*
  %74 = load i32, i32* @E1000_M88E1543_EEE_CTRL_1, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i64 %71(%struct.e1000_hw.0* %73, i32 %74, i32 %75)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %151

80:                                               ; preds = %64
  %81 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %82 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %83, align 8
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %86 = bitcast %struct.e1000_hw* %85 to %struct.e1000_hw.0*
  %87 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %88 = call i64 %84(%struct.e1000_hw.0* %86, i32 %87, i32 0)
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %151

92:                                               ; preds = %80
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %94 = load i32, i32* @E1000_EEE_ADV_ADDR_I354, align 4
  %95 = load i32, i32* @E1000_EEE_ADV_DEV_I354, align 4
  %96 = call i64 @e1000_read_xmdio_reg(%struct.e1000_hw* %93, i32 %94, i32 %95, i32* %9)
  store i64 %96, i64* %8, align 8
  %97 = load i64, i64* %8, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %151

100:                                              ; preds = %92
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* @E1000_EEE_ADV_100_SUPPORTED, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %112

107:                                              ; preds = %100
  %108 = load i32, i32* @E1000_EEE_ADV_100_SUPPORTED, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %9, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %107, %103
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* @E1000_EEE_ADV_1000_SUPPORTED, align 4
  %117 = load i32, i32* %9, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %9, align 4
  br label %124

119:                                              ; preds = %112
  %120 = load i32, i32* @E1000_EEE_ADV_1000_SUPPORTED, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %9, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %119, %115
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %126 = load i32, i32* @E1000_EEE_ADV_ADDR_I354, align 4
  %127 = load i32, i32* @E1000_EEE_ADV_DEV_I354, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i64 @e1000_write_xmdio_reg(%struct.e1000_hw* %125, i32 %126, i32 %127, i32 %128)
  store i64 %129, i64* %8, align 8
  br label %150

130:                                              ; preds = %33
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %132 = load i32, i32* @E1000_EEE_ADV_ADDR_I354, align 4
  %133 = load i32, i32* @E1000_EEE_ADV_DEV_I354, align 4
  %134 = call i64 @e1000_read_xmdio_reg(%struct.e1000_hw* %131, i32 %132, i32 %133, i32* %9)
  store i64 %134, i64* %8, align 8
  %135 = load i64, i64* %8, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %151

138:                                              ; preds = %130
  %139 = load i32, i32* @E1000_EEE_ADV_100_SUPPORTED, align 4
  %140 = load i32, i32* @E1000_EEE_ADV_1000_SUPPORTED, align 4
  %141 = or i32 %139, %140
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %9, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %9, align 4
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %146 = load i32, i32* @E1000_EEE_ADV_ADDR_I354, align 4
  %147 = load i32, i32* @E1000_EEE_ADV_DEV_I354, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i64 @e1000_write_xmdio_reg(%struct.e1000_hw* %145, i32 %146, i32 %147, i32 %148)
  store i64 %149, i64* %8, align 8
  br label %150

150:                                              ; preds = %138, %124
  br label %151

151:                                              ; preds = %150, %137, %99, %91, %79, %63, %51, %32
  %152 = load i64, i64* %8, align 8
  ret i64 %152
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_read_xmdio_reg(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000_write_xmdio_reg(%struct.e1000_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
