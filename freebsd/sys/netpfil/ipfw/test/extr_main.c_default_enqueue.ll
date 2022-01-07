; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_default_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_default_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch_inst = type { i32 }
%struct.dn_queue = type { i32 }
%struct.mbuf = type { %struct.mbuf* }
%struct.mq = type { %struct.mbuf*, %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_sch_inst*, %struct.dn_queue*, %struct.mbuf*)* @default_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_enqueue(%struct.dn_sch_inst* %0, %struct.dn_queue* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.dn_sch_inst*, align 8
  %5 = alloca %struct.dn_queue*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mq*, align 8
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %4, align 8
  store %struct.dn_queue* %1, %struct.dn_queue** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %8 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %4, align 8
  %9 = bitcast %struct.dn_sch_inst* %8 to %struct.mq*
  store %struct.mq* %9, %struct.mq** %7, align 8
  %10 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %11 = load %struct.mq*, %struct.mq** %7, align 8
  %12 = getelementptr inbounds %struct.mq, %struct.mq* %11, i32 0, i32 1
  %13 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %14 = icmp eq %struct.mbuf* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %17 = load %struct.mq*, %struct.mq** %7, align 8
  %18 = getelementptr inbounds %struct.mq, %struct.mq* %17, i32 0, i32 1
  store %struct.mbuf* %16, %struct.mbuf** %18, align 8
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %21 = load %struct.mq*, %struct.mq** %7, align 8
  %22 = getelementptr inbounds %struct.mq, %struct.mq* %21, i32 0, i32 0
  %23 = load %struct.mbuf*, %struct.mbuf** %22, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 0
  store %struct.mbuf* %20, %struct.mbuf** %24, align 8
  br label %25

25:                                               ; preds = %19, %15
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = load %struct.mq*, %struct.mq** %7, align 8
  %28 = getelementptr inbounds %struct.mq, %struct.mq* %27, i32 0, i32 0
  store %struct.mbuf* %26, %struct.mbuf** %28, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
