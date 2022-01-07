; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_set_span_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_set_span_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.snmp_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.bridge_if = type { i32 }
%struct.bridge_port = type { i64, i64 }
%struct.mibif = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@begemotBridgeBaseSpanEnabled_enabled = common dso_local global i64 0, align 8
@begemotBridgeBaseSpanEnabled_disabled = common dso_local global i64 0, align 8
@SNMP_ERR_BADVALUE = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@RowStatus_destroy = common dso_local global i64 0, align 8
@RowStatus_active = common dso_local global i64 0, align 8
@RowStatus_notInService = common dso_local global i64 0, align 8
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_context*, %struct.snmp_value*, i32)* @bridge_port_set_span_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_port_set_span_enable(%struct.snmp_context* %0, %struct.snmp_value* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_context*, align 8
  %6 = alloca %struct.snmp_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bridge_if*, align 8
  %12 = alloca %struct.bridge_port*, align 8
  %13 = alloca %struct.mibif*, align 8
  %14 = alloca i32, align 4
  store %struct.snmp_context* %0, %struct.snmp_context** %5, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @IFNAMSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %20 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @begemotBridgeBaseSpanEnabled_enabled, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %27 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @begemotBridgeBaseSpanEnabled_disabled, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @SNMP_ERR_BADVALUE, align 4
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %99

34:                                               ; preds = %25, %3
  %35 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %36 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %35, i32 0, i32 1
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @bridge_port_index_decode(i32* %36, i32 %37, i8* %18, i32* %8)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %99

42:                                               ; preds = %34
  %43 = call %struct.bridge_if* @bridge_if_find_ifname(i8* %18)
  store %struct.bridge_if* %43, %struct.bridge_if** %11, align 8
  %44 = icmp eq %struct.bridge_if* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %99

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.bridge_if*, %struct.bridge_if** %11, align 8
  %50 = call %struct.bridge_port* @bridge_port_find(i32 %48, %struct.bridge_if* %49)
  store %struct.bridge_port* %50, %struct.bridge_port** %12, align 8
  %51 = icmp eq %struct.bridge_port* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = call %struct.mibif* @mib_find_if(i32 %53)
  store %struct.mibif* %54, %struct.mibif** %13, align 8
  %55 = icmp eq %struct.mibif* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %99

58:                                               ; preds = %52
  %59 = load %struct.mibif*, %struct.mibif** %13, align 8
  %60 = load %struct.bridge_if*, %struct.bridge_if** %11, align 8
  %61 = call %struct.bridge_port* @bridge_new_port(%struct.mibif* %59, %struct.bridge_if* %60)
  store %struct.bridge_port* %61, %struct.bridge_port** %12, align 8
  %62 = icmp eq %struct.bridge_port* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %99

65:                                               ; preds = %58
  %66 = load i64, i64* @RowStatus_destroy, align 8
  %67 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %68 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i64 %66, i64* %70, align 8
  br label %88

71:                                               ; preds = %47
  %72 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %73 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RowStatus_active, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %99

79:                                               ; preds = %71
  %80 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %81 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %84 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i64 %82, i64* %86, align 8
  br label %87

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %65
  %89 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %90 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %94 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* @RowStatus_notInService, align 8
  %96 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %97 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %98, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %99

99:                                               ; preds = %88, %77, %63, %56, %45, %40, %32
  %100 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bridge_port_index_decode(i32*, i32, i8*, i32*) #2

declare dso_local %struct.bridge_if* @bridge_if_find_ifname(i8*) #2

declare dso_local %struct.bridge_port* @bridge_port_find(i32, %struct.bridge_if*) #2

declare dso_local %struct.mibif* @mib_find_if(i32) #2

declare dso_local %struct.bridge_port* @bridge_new_port(%struct.mibif*, %struct.bridge_if*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
