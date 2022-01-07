; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_getinfo_bif_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_getinfo_bif_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i32 }
%struct.ifbreq = type { i32, i32 }
%struct.ifbpstpreq = type { i32, i32 }
%struct.bridge_port = type { i32, i32 }
%struct.mibif = type { i32 }

@RowStatus_active = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"bridge member %s not present in mibII ifTable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_getinfo_bif_ports(%struct.bridge_if* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bridge_if*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifbreq*, align 8
  %7 = alloca %struct.ifbreq*, align 8
  %8 = alloca %struct.ifbpstpreq*, align 8
  %9 = alloca %struct.ifbpstpreq*, align 8
  %10 = alloca %struct.bridge_port*, align 8
  %11 = alloca %struct.mibif*, align 8
  store %struct.bridge_if* %0, %struct.bridge_if** %3, align 8
  %12 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %13 = call i32 @bridge_port_get_iflist(%struct.bridge_if* %12, %struct.ifbreq** %6)
  store i32 %13, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %101

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %57, %16
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %17
  %25 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %25, i64 %27
  store %struct.ifbreq* %28, %struct.ifbreq** %7, align 8
  %29 = load %struct.ifbreq*, %struct.ifbreq** %7, align 8
  %30 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.mibif* @mib_find_if_sys(i32 %31)
  store %struct.mibif* %32, %struct.mibif** %11, align 8
  %33 = icmp ne %struct.mibif* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %24
  %35 = load %struct.mibif*, %struct.mibif** %11, align 8
  %36 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %37 = call %struct.bridge_port* @bridge_new_port(%struct.mibif* %35, %struct.bridge_if* %36)
  store %struct.bridge_port* %37, %struct.bridge_port** %10, align 8
  %38 = icmp ne %struct.bridge_port* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i32, i32* @RowStatus_active, align 4
  %41 = load %struct.bridge_port*, %struct.bridge_port** %10, align 8
  %42 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ifbreq*, %struct.ifbreq** %7, align 8
  %44 = load %struct.bridge_port*, %struct.bridge_port** %10, align 8
  %45 = call i32 @bridge_port_getinfo_conf(%struct.ifbreq* %43, %struct.bridge_port* %44)
  %46 = load %struct.mibif*, %struct.mibif** %11, align 8
  %47 = load %struct.bridge_port*, %struct.bridge_port** %10, align 8
  %48 = call i32 @bridge_port_getinfo_mibif(%struct.mibif* %46, %struct.bridge_port* %47)
  br label %49

49:                                               ; preds = %39, %34
  br label %56

50:                                               ; preds = %24
  %51 = load i32, i32* @LOG_ERR, align 4
  %52 = load %struct.ifbreq*, %struct.ifbreq** %7, align 8
  %53 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @syslog(i32 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %49
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %17

60:                                               ; preds = %17
  %61 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %62 = call i32 @free(%struct.ifbreq* %61)
  %63 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %64 = bitcast %struct.ifbpstpreq** %8 to %struct.ifbreq**
  %65 = call i32 @bridge_port_get_ifstplist(%struct.bridge_if* %63, %struct.ifbreq** %64)
  store i32 %65, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 -1, i32* %2, align 4
  br label %101

68:                                               ; preds = %60
  %69 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %70 = call %struct.bridge_port* @bridge_port_bif_first(%struct.bridge_if* %69)
  store %struct.bridge_port* %70, %struct.bridge_port** %10, align 8
  br label %71

71:                                               ; preds = %93, %68
  %72 = load %struct.bridge_port*, %struct.bridge_port** %10, align 8
  %73 = icmp ne %struct.bridge_port* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load %struct.bridge_port*, %struct.bridge_port** %10, align 8
  %76 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ifbpstpreq*, %struct.ifbpstpreq** %8, align 8
  %79 = bitcast %struct.ifbpstpreq* %78 to %struct.ifbreq*
  %80 = load i32, i32* %5, align 4
  %81 = call %struct.ifbreq* @bridge_port_find_ifstplist(i32 %77, %struct.ifbreq* %79, i32 %80)
  %82 = bitcast %struct.ifbreq* %81 to %struct.ifbpstpreq*
  store %struct.ifbpstpreq* %82, %struct.ifbpstpreq** %9, align 8
  %83 = icmp eq %struct.ifbpstpreq* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load %struct.bridge_port*, %struct.bridge_port** %10, align 8
  %86 = call i32 @bridge_port_clearinfo_opstp(%struct.bridge_port* %85)
  br label %92

87:                                               ; preds = %74
  %88 = load %struct.ifbpstpreq*, %struct.ifbpstpreq** %9, align 8
  %89 = bitcast %struct.ifbpstpreq* %88 to %struct.ifbreq*
  %90 = load %struct.bridge_port*, %struct.bridge_port** %10, align 8
  %91 = call i32 @bridge_port_getinfo_opstp(%struct.ifbreq* %89, %struct.bridge_port* %90)
  br label %92

92:                                               ; preds = %87, %84
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.bridge_port*, %struct.bridge_port** %10, align 8
  %95 = call %struct.bridge_port* @bridge_port_bif_next(%struct.bridge_port* %94)
  store %struct.bridge_port* %95, %struct.bridge_port** %10, align 8
  br label %71

96:                                               ; preds = %71
  %97 = load %struct.ifbpstpreq*, %struct.ifbpstpreq** %8, align 8
  %98 = bitcast %struct.ifbpstpreq* %97 to %struct.ifbreq*
  %99 = call i32 @free(%struct.ifbreq* %98)
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %96, %67, %15
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @bridge_port_get_iflist(%struct.bridge_if*, %struct.ifbreq**) #1

declare dso_local %struct.mibif* @mib_find_if_sys(i32) #1

declare dso_local %struct.bridge_port* @bridge_new_port(%struct.mibif*, %struct.bridge_if*) #1

declare dso_local i32 @bridge_port_getinfo_conf(%struct.ifbreq*, %struct.bridge_port*) #1

declare dso_local i32 @bridge_port_getinfo_mibif(%struct.mibif*, %struct.bridge_port*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.ifbreq*) #1

declare dso_local i32 @bridge_port_get_ifstplist(%struct.bridge_if*, %struct.ifbreq**) #1

declare dso_local %struct.bridge_port* @bridge_port_bif_first(%struct.bridge_if*) #1

declare dso_local %struct.ifbreq* @bridge_port_find_ifstplist(i32, %struct.ifbreq*, i32) #1

declare dso_local i32 @bridge_port_clearinfo_opstp(%struct.bridge_port*) #1

declare dso_local i32 @bridge_port_getinfo_opstp(%struct.ifbreq*, %struct.bridge_port*) #1

declare dso_local %struct.bridge_port* @bridge_port_bif_next(%struct.bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
