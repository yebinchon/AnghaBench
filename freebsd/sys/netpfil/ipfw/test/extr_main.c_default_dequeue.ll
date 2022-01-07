; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_default_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_default_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }
%struct.dn_sch_inst = type { i32 }
%struct.mq = type { %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.dn_sch_inst*)* @default_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @default_dequeue(%struct.dn_sch_inst* %0) #0 {
  %2 = alloca %struct.dn_sch_inst*, align 8
  %3 = alloca %struct.mq*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %2, align 8
  %5 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %2, align 8
  %6 = bitcast %struct.dn_sch_inst* %5 to %struct.mq*
  store %struct.mq* %6, %struct.mq** %3, align 8
  %7 = load %struct.mq*, %struct.mq** %3, align 8
  %8 = getelementptr inbounds %struct.mq, %struct.mq* %7, i32 0, i32 0
  %9 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %9, %struct.mbuf** %4, align 8
  %10 = icmp ne %struct.mbuf* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.mq*, %struct.mq** %3, align 8
  %13 = getelementptr inbounds %struct.mq, %struct.mq* %12, i32 0, i32 0
  %14 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %14, %struct.mbuf** %4, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %18 = load %struct.mq*, %struct.mq** %3, align 8
  %19 = getelementptr inbounds %struct.mq, %struct.mq* %18, i32 0, i32 0
  store %struct.mbuf* %17, %struct.mbuf** %19, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %21, align 8
  br label %22

22:                                               ; preds = %11, %1
  %23 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
