; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_get_phy_info_82577.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_get_phy_info_82577.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i8*, i8*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [25 x i8] c"e1000_get_phy_info_82577\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Phy info is only valid if link is up\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@I82577_PHY_STATUS_2 = common dso_local global i32 0, align 4
@I82577_PHY_STATUS2_MDIX = common dso_local global i32 0, align 4
@I82577_PHY_STATUS2_SPEED_MASK = common dso_local global i32 0, align 4
@I82577_PHY_STATUS2_SPEED_1000MBPS = common dso_local global i32 0, align 4
@PHY_1000T_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_ok = common dso_local global i8* null, align 8
@e1000_1000t_rx_status_not_ok = common dso_local global i8* null, align 8
@SR_1000T_REMOTE_RX_STATUS = common dso_local global i32 0, align 4
@E1000_CABLE_LENGTH_UNDEFINED = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_undefined = common dso_local global i8* null, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_get_phy_info_82577(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %11, i32 1, i32 0, i32* %7)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %125

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %2, align 8
  br label %125

24:                                               ; preds = %17
  %25 = load i32, i32* @TRUE, align 4
  %26 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = call i64 @e1000_check_polarity_82577(%struct.e1000_hw* %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %2, align 8
  br label %125

34:                                               ; preds = %24
  %35 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %37, align 8
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = bitcast %struct.e1000_hw* %39 to %struct.e1000_hw.0*
  %41 = load i32, i32* @I82577_PHY_STATUS_2, align 4
  %42 = call i64 %38(%struct.e1000_hw.0* %40, i32 %41, i32* %6)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %2, align 8
  br label %125

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @I82577_PHY_STATUS2_MDIX, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %56 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @I82577_PHY_STATUS2_SPEED_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @I82577_PHY_STATUS2_SPEED_1000MBPS, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %113

62:                                               ; preds = %47
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %64 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %66, align 8
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %69 = bitcast %struct.e1000_hw* %68 to %struct.e1000_hw.1*
  %70 = call i64 %67(%struct.e1000_hw.1* %69)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i64, i64* %5, align 8
  store i64 %74, i64* %2, align 8
  br label %125

75:                                               ; preds = %62
  %76 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %77 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %78, align 8
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = bitcast %struct.e1000_hw* %80 to %struct.e1000_hw.0*
  %82 = load i32, i32* @PHY_1000T_STATUS, align 4
  %83 = call i64 %79(%struct.e1000_hw.0* %81, i32 %82, i32* %6)
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i64, i64* %5, align 8
  store i64 %87, i64* %2, align 8
  br label %125

88:                                               ; preds = %75
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %97

95:                                               ; preds = %88
  %96 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i8* [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %100 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %109

107:                                              ; preds = %97
  %108 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i8* [ %106, %105 ], [ %108, %107 ]
  %111 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %112 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  br label %123

113:                                              ; preds = %47
  %114 = load i32, i32* @E1000_CABLE_LENGTH_UNDEFINED, align 4
  %115 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %116 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %118 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %119 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %121 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %122 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %113, %109
  %124 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %124, i64* %2, align 8
  br label %125

125:                                              ; preds = %123, %86, %73, %45, %32, %20, %15
  %126 = load i64, i64* %2, align 8
  ret i64 %126
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_check_polarity_82577(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
