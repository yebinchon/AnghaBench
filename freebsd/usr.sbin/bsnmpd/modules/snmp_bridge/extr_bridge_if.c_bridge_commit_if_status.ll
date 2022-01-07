; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_commit_if_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_commit_if_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32 }
%struct.bridge_if = type { i64 }

@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@RowStatus_destroy = common dso_local global i64 0, align 8
@SNMP_ERR_COMMIT_FAILED = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, i32)* @bridge_commit_if_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_commit_if_status(%struct.snmp_value* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bridge_if*, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %8 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %7, i32 0, i32 0
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.bridge_if* @bridge_if_index_get(i32* %8, i32 %9)
  store %struct.bridge_if* %10, %struct.bridge_if** %6, align 8
  %11 = icmp eq %struct.bridge_if* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.bridge_if*, %struct.bridge_if** %6, align 8
  %16 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RowStatus_destroy, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.bridge_if*, %struct.bridge_if** %6, align 8
  %22 = call i64 @bridge_if_destroy(%struct.bridge_if* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @SNMP_ERR_COMMIT_FAILED, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %20, %14
  %27 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %24, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.bridge_if* @bridge_if_index_get(i32*, i32) #1

declare dso_local i64 @bridge_if_destroy(%struct.bridge_if*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
