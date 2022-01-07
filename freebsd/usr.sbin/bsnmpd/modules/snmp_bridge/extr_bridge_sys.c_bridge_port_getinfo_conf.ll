; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_getinfo_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_getinfo_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifbreq = type { i32, i64, i32, i32 }
%struct.bridge_port = type { i8*, i32, i8*, i8*, i8*, i32, i32, i64, i64, i32, i32 }

@IFBIF_BSTP_ADMCOST = common dso_local global i32 0, align 4
@IFBIF_STP = common dso_local global i32 0, align 4
@dot1dStpPortEnable_enabled = common dso_local global i32 0, align 4
@dot1dStpPortEnable_disabled = common dso_local global i32 0, align 4
@IFBIF_SPAN = common dso_local global i32 0, align 4
@begemotBridgeBaseSpanEnabled_enabled = common dso_local global i32 0, align 4
@begemotBridgeBaseSpanEnabled_disabled = common dso_local global i32 0, align 4
@IFBIF_PRIVATE = common dso_local global i32 0, align 4
@TruthValue_true = common dso_local global i8* null, align 8
@TruthValue_false = common dso_local global i8* null, align 8
@IFBIF_BSTP_ADMEDGE = common dso_local global i32 0, align 4
@IFBIF_BSTP_EDGE = common dso_local global i32 0, align 4
@IFBIF_BSTP_AUTOPTP = common dso_local global i32 0, align 4
@StpPortAdminPointToPointType_auto = common dso_local global i32 0, align 4
@IFBIF_BSTP_PTP = common dso_local global i32 0, align 4
@StpPortAdminPointToPointType_forceTrue = common dso_local global i32 0, align 4
@StpPortAdminPointToPointType_forceFalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifbreq*, %struct.bridge_port*)* @bridge_port_getinfo_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_port_getinfo_conf(%struct.ifbreq* %0, %struct.bridge_port* %1) #0 {
  %3 = alloca %struct.ifbreq*, align 8
  %4 = alloca %struct.bridge_port*, align 8
  store %struct.ifbreq* %0, %struct.ifbreq** %3, align 8
  store %struct.bridge_port* %1, %struct.bridge_port** %4, align 8
  %5 = load %struct.ifbreq*, %struct.ifbreq** %3, align 8
  %6 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @state2snmp_st(i32 %7)
  %9 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %10 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %9, i32 0, i32 10
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ifbreq*, %struct.ifbreq** %3, align 8
  %12 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %15 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %14, i32 0, i32 9
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ifbreq*, %struct.ifbreq** %3, align 8
  %17 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IFBIF_BSTP_ADMCOST, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.ifbreq*, %struct.ifbreq** %3, align 8
  %24 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %27 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %26, i32 0, i32 8
  store i64 %25, i64* %27, align 8
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %30 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %29, i32 0, i32 8
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.ifbreq*, %struct.ifbreq** %3, align 8
  %33 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %36 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %35, i32 0, i32 7
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ifbreq*, %struct.ifbreq** %3, align 8
  %38 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IFBIF_STP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i32, i32* @dot1dStpPortEnable_enabled, align 4
  %45 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %46 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  br label %51

47:                                               ; preds = %31
  %48 = load i32, i32* @dot1dStpPortEnable_disabled, align 4
  %49 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %50 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.ifbreq*, %struct.ifbreq** %3, align 8
  %53 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IFBIF_SPAN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @begemotBridgeBaseSpanEnabled_enabled, align 4
  %60 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %61 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  br label %66

62:                                               ; preds = %51
  %63 = load i32, i32* @begemotBridgeBaseSpanEnabled_disabled, align 4
  %64 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %65 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.ifbreq*, %struct.ifbreq** %3, align 8
  %68 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IFBIF_PRIVATE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i8*, i8** @TruthValue_true, align 8
  %75 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %76 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  br label %81

77:                                               ; preds = %66
  %78 = load i8*, i8** @TruthValue_false, align 8
  %79 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %80 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.ifbreq*, %struct.ifbreq** %3, align 8
  %83 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IFBIF_BSTP_ADMEDGE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i8*, i8** @TruthValue_true, align 8
  %90 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %91 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  br label %96

92:                                               ; preds = %81
  %93 = load i8*, i8** @TruthValue_false, align 8
  %94 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %95 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %92, %88
  %97 = load %struct.ifbreq*, %struct.ifbreq** %3, align 8
  %98 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IFBIF_BSTP_EDGE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i8*, i8** @TruthValue_true, align 8
  %105 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %106 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  br label %111

107:                                              ; preds = %96
  %108 = load i8*, i8** @TruthValue_false, align 8
  %109 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %110 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %107, %103
  %112 = load %struct.ifbreq*, %struct.ifbreq** %3, align 8
  %113 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @IFBIF_BSTP_AUTOPTP, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %111
  %119 = load i32, i32* @StpPortAdminPointToPointType_auto, align 4
  %120 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %121 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.ifbreq*, %struct.ifbreq** %3, align 8
  %123 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IFBIF_BSTP_PTP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %118
  %129 = load i8*, i8** @TruthValue_true, align 8
  %130 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %131 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  br label %136

132:                                              ; preds = %118
  %133 = load i8*, i8** @TruthValue_false, align 8
  %134 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %135 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %132, %128
  br label %159

137:                                              ; preds = %111
  %138 = load %struct.ifbreq*, %struct.ifbreq** %3, align 8
  %139 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @IFBIF_BSTP_PTP, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %137
  %145 = load i32, i32* @StpPortAdminPointToPointType_forceTrue, align 4
  %146 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %147 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load i8*, i8** @TruthValue_true, align 8
  %149 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %150 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  br label %158

151:                                              ; preds = %137
  %152 = load i32, i32* @StpPortAdminPointToPointType_forceFalse, align 4
  %153 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %154 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load i8*, i8** @TruthValue_false, align 8
  %156 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %157 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %151, %144
  br label %159

159:                                              ; preds = %158, %136
  ret void
}

declare dso_local i32 @state2snmp_st(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
