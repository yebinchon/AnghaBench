; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_rollback_if_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_rollback_if_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snmp_value = type { i32 }
%struct.bridge_if = type { i32, i32 }

@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_context*, %struct.snmp_value*, i32)* @bridge_rollback_if_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_rollback_if_status(%struct.snmp_context* %0, %struct.snmp_value* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_context*, align 8
  %6 = alloca %struct.snmp_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bridge_if*, align 8
  store %struct.snmp_context* %0, %struct.snmp_context** %5, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %10 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %9, i32 0, i32 0
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.bridge_if* @bridge_if_index_get(i32* %10, i32 %11)
  store %struct.bridge_if* %12, %struct.bridge_if** %8, align 8
  %13 = icmp eq %struct.bridge_if* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %15, i32* %4, align 4
  br label %66

16:                                               ; preds = %3
  %17 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %18 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %64 [
    i32 129, label %22
    i32 128, label %26
    i32 130, label %45
  ]

22:                                               ; preds = %16
  %23 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %24 = call i32 @bridge_if_destroy(%struct.bridge_if* %23)
  %25 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %66

26:                                               ; preds = %16
  %27 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %28 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %31 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %29, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %38 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bridge_set_if_up(i32 %39, i32 0)
  br label %41

41:                                               ; preds = %36, %26
  %42 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %43 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %42, i32 0, i32 0
  store i32 128, i32* %43, align 4
  %44 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %44, i32* %4, align 4
  br label %66

45:                                               ; preds = %16
  %46 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %47 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %50 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %48, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %57 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bridge_set_if_up(i32 %58, i32 1)
  br label %60

60:                                               ; preds = %55, %45
  %61 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %62 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %61, i32 0, i32 0
  store i32 130, i32* %62, align 4
  %63 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %63, i32* %4, align 4
  br label %66

64:                                               ; preds = %16
  %65 = call i32 (...) @abort() #3
  unreachable

66:                                               ; preds = %60, %41, %22, %14
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.bridge_if* @bridge_if_index_get(i32*, i32) #1

declare dso_local i32 @bridge_if_destroy(%struct.bridge_if*) #1

declare dso_local i32 @bridge_set_if_up(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
