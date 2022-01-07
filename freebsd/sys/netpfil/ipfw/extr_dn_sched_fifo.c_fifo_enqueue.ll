; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fifo.c_fifo_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fifo.c_fifo_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch_inst = type { i32 }
%struct.dn_queue = type { i32 }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_sch_inst*, %struct.dn_queue*, %struct.mbuf*)* @fifo_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifo_enqueue(%struct.dn_sch_inst* %0, %struct.dn_queue* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.dn_sch_inst*, align 8
  %5 = alloca %struct.dn_queue*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %4, align 8
  store %struct.dn_queue* %1, %struct.dn_queue** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %7 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %8 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %4, align 8
  %9 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %8, i64 1
  %10 = bitcast %struct.dn_sch_inst* %9 to %struct.dn_queue*
  %11 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %12 = call i32 @dn_enqueue(%struct.dn_queue* %10, %struct.mbuf* %11, i32 0)
  ret i32 %12
}

declare dso_local i32 @dn_enqueue(%struct.dn_queue*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
