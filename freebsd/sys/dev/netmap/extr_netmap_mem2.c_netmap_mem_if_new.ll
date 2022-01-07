; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_if_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_if_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_if = type { i32 }
%struct.netmap_adapter = type { %struct.netmap_mem_d* }
%struct.netmap_mem_d = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.netmap_priv_d = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netmap_if* @netmap_mem_if_new(%struct.netmap_adapter* %0, %struct.netmap_priv_d* %1) #0 {
  %3 = alloca %struct.netmap_adapter*, align 8
  %4 = alloca %struct.netmap_priv_d*, align 8
  %5 = alloca %struct.netmap_if*, align 8
  %6 = alloca %struct.netmap_mem_d*, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %3, align 8
  store %struct.netmap_priv_d* %1, %struct.netmap_priv_d** %4, align 8
  %7 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %7, i32 0, i32 0
  %9 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %8, align 8
  store %struct.netmap_mem_d* %9, %struct.netmap_mem_d** %6, align 8
  %10 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %6, align 8
  %11 = call i32 @NMA_LOCK(%struct.netmap_mem_d* %10)
  %12 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %6, align 8
  %13 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to %struct.netmap_if* (%struct.netmap_adapter*, %struct.netmap_priv_d*)**
  %17 = load %struct.netmap_if* (%struct.netmap_adapter*, %struct.netmap_priv_d*)*, %struct.netmap_if* (%struct.netmap_adapter*, %struct.netmap_priv_d*)** %16, align 8
  %18 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %19 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %20 = call %struct.netmap_if* %17(%struct.netmap_adapter* %18, %struct.netmap_priv_d* %19)
  store %struct.netmap_if* %20, %struct.netmap_if** %5, align 8
  %21 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %6, align 8
  %22 = call i32 @NMA_UNLOCK(%struct.netmap_mem_d* %21)
  %23 = load %struct.netmap_if*, %struct.netmap_if** %5, align 8
  ret %struct.netmap_if* %23
}

declare dso_local i32 @NMA_LOCK(%struct.netmap_mem_d*) #1

declare dso_local i32 @NMA_UNLOCK(%struct.netmap_mem_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
