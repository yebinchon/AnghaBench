; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_debugnet.c_debugnet_network_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_debugnet.c_debugnet_network_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debugnet_pcb = type { %struct.ifnet* }
%struct.ifnet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ifnet*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debugnet_network_poll(%struct.debugnet_pcb* %0) #0 {
  %2 = alloca %struct.debugnet_pcb*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.debugnet_pcb* %0, %struct.debugnet_pcb** %2, align 8
  %4 = load %struct.debugnet_pcb*, %struct.debugnet_pcb** %2, align 8
  %5 = getelementptr inbounds %struct.debugnet_pcb, %struct.debugnet_pcb* %4, i32 0, i32 0
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %10, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = call i32 %11(%struct.ifnet* %12, i32 1000)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
