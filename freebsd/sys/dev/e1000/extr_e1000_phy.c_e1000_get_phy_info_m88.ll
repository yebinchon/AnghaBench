; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_get_phy_info_m88.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_get_phy_info_m88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i32, i32, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [23 x i8] c"e1000_get_phy_info_m88\00", align 1
@e1000_media_type_copper = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Phy info is only valid for copper media\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Phy info is only valid if link is up\0A\00", align 1
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_MDIX = common dso_local global i32 0, align 4
@M88E1000_PSSR_SPEED = common dso_local global i32 0, align 4
@M88E1000_PSSR_1000MBS = common dso_local global i32 0, align 4
@PHY_1000T_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_ok = common dso_local global i8* null, align 8
@e1000_1000t_rx_status_not_ok = common dso_local global i8* null, align 8
@SR_1000T_REMOTE_RX_STATUS = common dso_local global i32 0, align 4
@E1000_CABLE_LENGTH_UNDEFINED = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_undefined = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_get_phy_info_m88(%struct.e1000_hw* %0) #0 {
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
  %11 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_media_type_copper, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %2, align 8
  br label %154

20:                                               ; preds = %1
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %21, i32 1, i32 0, i32* %7)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %2, align 8
  br label %154

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %33 = sub nsw i64 0, %32
  store i64 %33, i64* %2, align 8
  br label %154

34:                                               ; preds = %27
  %35 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %37, align 8
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = bitcast %struct.e1000_hw* %39 to %struct.e1000_hw.0*
  %41 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %42 = call i64 %38(%struct.e1000_hw.0* %40, i32 %41, i32* %6)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %2, align 8
  br label %154

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %56 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = call i64 @e1000_check_polarity_m88(%struct.e1000_hw* %57)
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i64, i64* %5, align 8
  store i64 %62, i64* %2, align 8
  br label %154

63:                                               ; preds = %47
  %64 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %66, align 8
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %69 = bitcast %struct.e1000_hw* %68 to %struct.e1000_hw.0*
  %70 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %71 = call i64 %67(%struct.e1000_hw.0* %69, i32 %70, i32* %6)
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i64, i64* %5, align 8
  store i64 %75, i64* %2, align 8
  br label %154

76:                                               ; preds = %63
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @M88E1000_PSSR_MDIX, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %85 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @M88E1000_PSSR_SPEED, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @M88E1000_PSSR_1000MBS, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %142

91:                                               ; preds = %76
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %95, align 8
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = bitcast %struct.e1000_hw* %97 to %struct.e1000_hw.1*
  %99 = call i64 %96(%struct.e1000_hw.1* %98)
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = load i64, i64* %5, align 8
  store i64 %103, i64* %2, align 8
  br label %154

104:                                              ; preds = %91
  %105 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %106 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %107, align 8
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %110 = bitcast %struct.e1000_hw* %109 to %struct.e1000_hw.0*
  %111 = load i32, i32* @PHY_1000T_STATUS, align 4
  %112 = call i64 %108(%struct.e1000_hw.0* %110, i32 %111, i32* %6)
  store i64 %112, i64* %5, align 8
  %113 = load i64, i64* %5, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = load i64, i64* %5, align 8
  store i64 %116, i64* %2, align 8
  br label %154

117:                                              ; preds = %104
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %126

124:                                              ; preds = %117
  %125 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i8* [ %123, %122 ], [ %125, %124 ]
  %128 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %129 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %128, i32 0, i32 4
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %138

136:                                              ; preds = %126
  %137 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i8* [ %135, %134 ], [ %137, %136 ]
  %140 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %141 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  br label %152

142:                                              ; preds = %76
  %143 = load i32, i32* @E1000_CABLE_LENGTH_UNDEFINED, align 4
  %144 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %145 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 8
  %146 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %147 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %148 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %150 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %151 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %142, %138
  %153 = load i64, i64* %5, align 8
  store i64 %153, i64* %2, align 8
  br label %154

154:                                              ; preds = %152, %115, %102, %74, %61, %45, %30, %25, %16
  %155 = load i64, i64* %2, align 8
  ret i64 %155
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000_check_polarity_m88(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
