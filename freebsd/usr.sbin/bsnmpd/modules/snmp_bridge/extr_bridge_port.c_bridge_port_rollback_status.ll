; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_rollback_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_rollback_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snmp_value = type { i32 }
%struct.bridge_if = type { i32 }
%struct.bridge_port = type { i64 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@RowStatus_destroy = common dso_local global i64 0, align 8
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_context*, %struct.snmp_value*, i32)* @bridge_port_rollback_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_port_rollback_status(%struct.snmp_context* %0, %struct.snmp_value* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_context*, align 8
  %6 = alloca %struct.snmp_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bridge_if*, align 8
  %12 = alloca %struct.bridge_port*, align 8
  %13 = alloca i32, align 4
  store %struct.snmp_context* %0, %struct.snmp_context** %5, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @IFNAMSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %19 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %18, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @bridge_port_index_decode(i32* %19, i32 %20, i8* %17, i32* %8)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %57

25:                                               ; preds = %3
  %26 = call %struct.bridge_if* @bridge_if_find_ifname(i8* %17)
  store %struct.bridge_if* %26, %struct.bridge_if** %11, align 8
  %27 = icmp eq %struct.bridge_if* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.bridge_if*, %struct.bridge_if** %11, align 8
  %31 = call %struct.bridge_port* @bridge_port_find(i32 %29, %struct.bridge_if* %30)
  store %struct.bridge_port* %31, %struct.bridge_port** %12, align 8
  %32 = icmp eq %struct.bridge_port* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %25
  %34 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %57

35:                                               ; preds = %28
  %36 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %37 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RowStatus_destroy, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %45 = load %struct.bridge_if*, %struct.bridge_if** %11, align 8
  %46 = call i32 @bridge_port_remove(%struct.bridge_port* %44, %struct.bridge_if* %45)
  br label %55

47:                                               ; preds = %35
  %48 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %49 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.bridge_port*, %struct.bridge_port** %12, align 8
  %54 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %47, %43
  %56 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %57

57:                                               ; preds = %55, %33, %23
  %58 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bridge_port_index_decode(i32*, i32, i8*, i32*) #2

declare dso_local %struct.bridge_if* @bridge_if_find_ifname(i8*) #2

declare dso_local %struct.bridge_port* @bridge_port_find(i32, %struct.bridge_if*) #2

declare dso_local i32 @bridge_port_remove(%struct.bridge_port*, %struct.bridge_if*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
