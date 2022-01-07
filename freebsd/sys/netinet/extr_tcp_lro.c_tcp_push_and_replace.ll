; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_push_and_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_push_and_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.lro_ctrl = type { i32 }
%struct.lro_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.lro_ctrl*, %struct.lro_entry*, %struct.mbuf*, i32)* @tcp_push_and_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_push_and_replace(%struct.tcpcb* %0, %struct.lro_ctrl* %1, %struct.lro_entry* %2, %struct.mbuf* %3, i32 %4) #0 {
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.lro_ctrl*, align 8
  %8 = alloca %struct.lro_entry*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store %struct.lro_ctrl* %1, %struct.lro_ctrl** %7, align 8
  store %struct.lro_entry* %2, %struct.lro_entry** %8, align 8
  store %struct.mbuf* %3, %struct.mbuf** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.lro_entry*, %struct.lro_entry** %8, align 8
  %13 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  store %struct.mbuf* %16, %struct.mbuf** %11, align 8
  %17 = load %struct.lro_entry*, %struct.lro_entry** %8, align 8
  %18 = getelementptr inbounds %struct.lro_entry, %struct.lro_entry* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %20, align 8
  %21 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %22 = load %struct.lro_ctrl*, %struct.lro_ctrl** %7, align 8
  %23 = load %struct.lro_entry*, %struct.lro_entry** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @tcp_flush_out_le(%struct.tcpcb* %21, %struct.lro_ctrl* %22, %struct.lro_entry* %23, i32 %24)
  %26 = load %struct.lro_ctrl*, %struct.lro_ctrl** %7, align 8
  %27 = load %struct.lro_entry*, %struct.lro_entry** %8, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %29 = call i32 @tcp_set_le_to_m(%struct.lro_ctrl* %26, %struct.lro_entry* %27, %struct.mbuf* %28)
  %30 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 0
  store %struct.mbuf* %30, %struct.mbuf** %32, align 8
  ret void
}

declare dso_local i32 @tcp_flush_out_le(%struct.tcpcb*, %struct.lro_ctrl*, %struct.lro_entry*, i32) #1

declare dso_local i32 @tcp_set_le_to_m(%struct.lro_ctrl*, %struct.lro_entry*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
