; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_update_memif.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_update_memif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i32 }
%struct.ifbreq = type { i32, i32 }
%struct.ifbpstpreq = type { i32, i32 }
%struct.bridge_port = type { i64, i32, i32 }
%struct.mibif = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"bridge member %s not present in mibII ifTable\00", align 1
@RowStatus_active = common dso_local global i64 0, align 8
@BP_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_update_memif(%struct.bridge_if* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bridge_if*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifbreq*, align 8
  %9 = alloca %struct.ifbreq*, align 8
  %10 = alloca %struct.ifbpstpreq*, align 8
  %11 = alloca %struct.ifbpstpreq*, align 8
  %12 = alloca %struct.bridge_port*, align 8
  %13 = alloca %struct.bridge_port*, align 8
  %14 = alloca %struct.mibif*, align 8
  store %struct.bridge_if* %0, %struct.bridge_if** %3, align 8
  %15 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %16 = call i32 @bridge_port_get_iflist(%struct.bridge_if* %15, %struct.ifbreq** %8)
  store i32 %16, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %157

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %78, %19
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %81

27:                                               ; preds = %20
  %28 = load %struct.ifbreq*, %struct.ifbreq** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %28, i64 %30
  store %struct.ifbreq* %31, %struct.ifbreq** %9, align 8
  %32 = load %struct.ifbreq*, %struct.ifbreq** %9, align 8
  %33 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.mibif* @mib_find_if_sys(i32 %34)
  store %struct.mibif* %35, %struct.mibif** %14, align 8
  %36 = icmp eq %struct.mibif* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = load %struct.ifbreq*, %struct.ifbreq** %9, align 8
  %40 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @syslog(i32 %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %78

43:                                               ; preds = %27
  %44 = load %struct.mibif*, %struct.mibif** %14, align 8
  %45 = getelementptr inbounds %struct.mibif, %struct.mibif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %48 = call %struct.bridge_port* @bridge_port_find(i32 %46, %struct.bridge_if* %47)
  store %struct.bridge_port* %48, %struct.bridge_port** %12, align 8
  %49 = icmp eq %struct.bridge_port* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.mibif*, %struct.mibif** %14, align 8
  %52 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %53 = call %struct.bridge_port* @bridge_new_port(%struct.mibif* %51, %struct.bridge_if* %52)
  store %struct.bridge_port* %53, %struct.bridge_port** %12, align 8
  %54 = icmp ne %struct.bridge_port* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i64, i64* @RowStatus_active, align 8
  %57 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %58 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %50, %43
  %62 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %63 = icmp ne %struct.bridge_port* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  %67 = load %struct.ifbreq*, %struct.ifbreq** %9, align 8
  %68 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %69 = call i32 @bridge_port_getinfo_conf(%struct.ifbreq* %67, %struct.bridge_port* %68)
  %70 = load %struct.mibif*, %struct.mibif** %14, align 8
  %71 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %72 = call i32 @bridge_port_getinfo_mibif(%struct.mibif* %70, %struct.bridge_port* %71)
  %73 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %74 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %64, %61
  br label %78

78:                                               ; preds = %77, %37
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %20

81:                                               ; preds = %20
  %82 = load %struct.ifbreq*, %struct.ifbreq** %8, align 8
  %83 = call i32 @free(%struct.ifbreq* %82)
  %84 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %85 = call %struct.bridge_port* @bridge_port_bif_first(%struct.bridge_if* %84)
  store %struct.bridge_port* %85, %struct.bridge_port** %12, align 8
  br label %86

86:                                               ; preds = %113, %81
  %87 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %88 = icmp ne %struct.bridge_port* %87, null
  br i1 %88, label %89, label %115

89:                                               ; preds = %86
  %90 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %91 = call %struct.bridge_port* @bridge_port_bif_next(%struct.bridge_port* %90)
  store %struct.bridge_port* %91, %struct.bridge_port** %13, align 8
  %92 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %93 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %89
  %98 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %99 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @RowStatus_active, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %105 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %106 = call i32 @bridge_port_remove(%struct.bridge_port* %104, %struct.bridge_if* %105)
  br label %112

107:                                              ; preds = %97, %89
  %108 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %109 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, -2
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %107, %103
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.bridge_port*, %struct.bridge_port** %13, align 8
  store %struct.bridge_port* %114, %struct.bridge_port** %12, align 8
  br label %86

115:                                              ; preds = %86
  %116 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %117 = bitcast %struct.ifbpstpreq** %10 to %struct.ifbreq**
  %118 = call i32 @bridge_port_get_ifstplist(%struct.bridge_if* %116, %struct.ifbreq** %117)
  store i32 %118, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 -1, i32* %2, align 4
  br label %157

121:                                              ; preds = %115
  %122 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %123 = call %struct.bridge_port* @bridge_port_bif_first(%struct.bridge_if* %122)
  store %struct.bridge_port* %123, %struct.bridge_port** %12, align 8
  br label %124

124:                                              ; preds = %146, %121
  %125 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %126 = icmp ne %struct.bridge_port* %125, null
  br i1 %126, label %127, label %149

127:                                              ; preds = %124
  %128 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %129 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ifbpstpreq*, %struct.ifbpstpreq** %10, align 8
  %132 = bitcast %struct.ifbpstpreq* %131 to %struct.ifbreq*
  %133 = load i32, i32* %7, align 4
  %134 = call %struct.ifbreq* @bridge_port_find_ifstplist(i32 %130, %struct.ifbreq* %132, i32 %133)
  %135 = bitcast %struct.ifbreq* %134 to %struct.ifbpstpreq*
  store %struct.ifbpstpreq* %135, %struct.ifbpstpreq** %11, align 8
  %136 = icmp eq %struct.ifbpstpreq* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %139 = call i32 @bridge_port_clearinfo_opstp(%struct.bridge_port* %138)
  br label %145

140:                                              ; preds = %127
  %141 = load %struct.ifbpstpreq*, %struct.ifbpstpreq** %11, align 8
  %142 = bitcast %struct.ifbpstpreq* %141 to %struct.ifbreq*
  %143 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %144 = call i32 @bridge_port_getinfo_opstp(%struct.ifbreq* %142, %struct.bridge_port* %143)
  br label %145

145:                                              ; preds = %140, %137
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %148 = call %struct.bridge_port* @bridge_port_bif_next(%struct.bridge_port* %147)
  store %struct.bridge_port* %148, %struct.bridge_port** %12, align 8
  br label %124

149:                                              ; preds = %124
  %150 = load %struct.ifbpstpreq*, %struct.ifbpstpreq** %10, align 8
  %151 = bitcast %struct.ifbpstpreq* %150 to %struct.ifbreq*
  %152 = call i32 @free(%struct.ifbreq* %151)
  %153 = call i32 @time(i32* null)
  %154 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %155 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %5, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %149, %120, %18
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @bridge_port_get_iflist(%struct.bridge_if*, %struct.ifbreq**) #1

declare dso_local %struct.mibif* @mib_find_if_sys(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local %struct.bridge_port* @bridge_port_find(i32, %struct.bridge_if*) #1

declare dso_local %struct.bridge_port* @bridge_new_port(%struct.mibif*, %struct.bridge_if*) #1

declare dso_local i32 @bridge_port_getinfo_conf(%struct.ifbreq*, %struct.bridge_port*) #1

declare dso_local i32 @bridge_port_getinfo_mibif(%struct.mibif*, %struct.bridge_port*) #1

declare dso_local i32 @free(%struct.ifbreq*) #1

declare dso_local %struct.bridge_port* @bridge_port_bif_first(%struct.bridge_if*) #1

declare dso_local %struct.bridge_port* @bridge_port_bif_next(%struct.bridge_port*) #1

declare dso_local i32 @bridge_port_remove(%struct.bridge_port*, %struct.bridge_if*) #1

declare dso_local i32 @bridge_port_get_ifstplist(%struct.bridge_if*, %struct.ifbreq**) #1

declare dso_local %struct.ifbreq* @bridge_port_find_ifstplist(i32, %struct.ifbreq*, i32) #1

declare dso_local i32 @bridge_port_clearinfo_opstp(%struct.bridge_port*) #1

declare dso_local i32 @bridge_port_getinfo_opstp(%struct.ifbreq*, %struct.bridge_port*) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
