; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_get_phy_info_igp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_get_phy_info_igp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i8*, i8*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [23 x i8] c"e1000_get_phy_info_igp\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Phy info is only valid if link is up\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PORT_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_MDIX = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_1000MBPS = common dso_local global i32 0, align 4
@PHY_1000T_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_ok = common dso_local global i8* null, align 8
@e1000_1000t_rx_status_not_ok = common dso_local global i8* null, align 8
@SR_1000T_REMOTE_RX_STATUS = common dso_local global i32 0, align 4
@E1000_CABLE_LENGTH_UNDEFINED = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_undefined = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_get_phy_info_igp(%struct.e1000_hw* %0) #0 {
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
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %11, i32 1, i32 0, i32* %7)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %124

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %2, align 8
  br label %124

24:                                               ; preds = %17
  %25 = load i32, i32* @TRUE, align 4
  %26 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = call i64 @e1000_check_polarity_igp(%struct.e1000_hw* %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %2, align 8
  br label %124

34:                                               ; preds = %24
  %35 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %37, align 8
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = bitcast %struct.e1000_hw* %39 to %struct.e1000_hw.0*
  %41 = load i32, i32* @IGP01E1000_PHY_PORT_STATUS, align 4
  %42 = call i64 %38(%struct.e1000_hw.0* %40, i32 %41, i32* %6)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %2, align 8
  br label %124

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @IGP01E1000_PSSR_MDIX, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %56 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @IGP01E1000_PSSR_SPEED_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @IGP01E1000_PSSR_SPEED_1000MBPS, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %112

62:                                               ; preds = %47
  %63 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %64 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %65, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = bitcast %struct.e1000_hw* %67 to %struct.e1000_hw.1*
  %69 = call i64 %66(%struct.e1000_hw.1* %68)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i64, i64* %5, align 8
  store i64 %73, i64* %2, align 8
  br label %124

74:                                               ; preds = %62
  %75 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %76 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %77, align 8
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = bitcast %struct.e1000_hw* %79 to %struct.e1000_hw.0*
  %81 = load i32, i32* @PHY_1000T_STATUS, align 4
  %82 = call i64 %78(%struct.e1000_hw.0* %80, i32 %81, i32* %6)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i64, i64* %5, align 8
  store i64 %86, i64* %2, align 8
  br label %124

87:                                               ; preds = %74
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %96

94:                                               ; preds = %87
  %95 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i8* [ %93, %92 ], [ %95, %94 ]
  %98 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %99 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %108

106:                                              ; preds = %96
  %107 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i8* [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %111 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %122

112:                                              ; preds = %47
  %113 = load i32, i32* @E1000_CABLE_LENGTH_UNDEFINED, align 4
  %114 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %115 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %117 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %118 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %120 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %121 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %112, %108
  %123 = load i64, i64* %5, align 8
  store i64 %123, i64* %2, align 8
  br label %124

124:                                              ; preds = %122, %85, %72, %45, %32, %20, %15
  %125 = load i64, i64* %2, align 8
  ret i64 %125
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_check_polarity_igp(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
