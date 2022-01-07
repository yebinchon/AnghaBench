; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_port = type { i64, i64 }
%struct.bridge_if = type { i64, %struct.bridge_port* }

@b_p = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bridge_port* @bridge_port_find(i64 %0, %struct.bridge_if* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bridge_if*, align 8
  %5 = alloca %struct.bridge_port*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.bridge_if* %1, %struct.bridge_if** %4, align 8
  %6 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %7 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %6, i32 0, i32 1
  %8 = load %struct.bridge_port*, %struct.bridge_port** %7, align 8
  store %struct.bridge_port* %8, %struct.bridge_port** %5, align 8
  br label %9

9:                                                ; preds = %29, %2
  %10 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %11 = icmp ne %struct.bridge_port* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %14 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %17 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store %struct.bridge_port* null, %struct.bridge_port** %5, align 8
  br label %33

21:                                               ; preds = %12
  %22 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %23 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %33

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %31 = load i32, i32* @b_p, align 4
  %32 = call %struct.bridge_port* @TAILQ_NEXT(%struct.bridge_port* %30, i32 %31)
  store %struct.bridge_port* %32, %struct.bridge_port** %5, align 8
  br label %9

33:                                               ; preds = %27, %20, %9
  %34 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  ret %struct.bridge_port* %34
}

declare dso_local %struct.bridge_port* @TAILQ_NEXT(%struct.bridge_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
