; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_memif_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_memif_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_ports = type { i32 }
%struct.bridge_if = type { i64, %struct.bridge_port* }
%struct.bridge_port = type { i64 }

@b_p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bridge_ports*, %struct.bridge_if*)* @bridge_port_memif_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_port_memif_free(%struct.bridge_ports* %0, %struct.bridge_if* %1) #0 {
  %3 = alloca %struct.bridge_ports*, align 8
  %4 = alloca %struct.bridge_if*, align 8
  %5 = alloca %struct.bridge_port*, align 8
  store %struct.bridge_ports* %0, %struct.bridge_ports** %3, align 8
  store %struct.bridge_if* %1, %struct.bridge_if** %4, align 8
  br label %6

6:                                                ; preds = %23, %2
  %7 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %8 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %7, i32 0, i32 1
  %9 = load %struct.bridge_port*, %struct.bridge_port** %8, align 8
  %10 = icmp ne %struct.bridge_port* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %13 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %16 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %15, i32 0, i32 1
  %17 = load %struct.bridge_port*, %struct.bridge_port** %16, align 8
  %18 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %14, %19
  br label %21

21:                                               ; preds = %11, %6
  %22 = phi i1 [ false, %6 ], [ %20, %11 ]
  br i1 %22, label %23, label %42

23:                                               ; preds = %21
  %24 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %25 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %24, i32 0, i32 1
  %26 = load %struct.bridge_port*, %struct.bridge_port** %25, align 8
  %27 = load i32, i32* @b_p, align 4
  %28 = call %struct.bridge_port* @TAILQ_NEXT(%struct.bridge_port* %26, i32 %27)
  store %struct.bridge_port* %28, %struct.bridge_port** %5, align 8
  %29 = load %struct.bridge_ports*, %struct.bridge_ports** %3, align 8
  %30 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %31 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %30, i32 0, i32 1
  %32 = load %struct.bridge_port*, %struct.bridge_port** %31, align 8
  %33 = load i32, i32* @b_p, align 4
  %34 = call i32 @TAILQ_REMOVE(%struct.bridge_ports* %29, %struct.bridge_port* %32, i32 %33)
  %35 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %36 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %35, i32 0, i32 1
  %37 = load %struct.bridge_port*, %struct.bridge_port** %36, align 8
  %38 = call i32 @free(%struct.bridge_port* %37)
  %39 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %40 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %41 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %40, i32 0, i32 1
  store %struct.bridge_port* %39, %struct.bridge_port** %41, align 8
  br label %6

42:                                               ; preds = %21
  ret void
}

declare dso_local %struct.bridge_port* @TAILQ_NEXT(%struct.bridge_port*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.bridge_ports*, %struct.bridge_port*, i32) #1

declare dso_local i32 @free(%struct.bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
