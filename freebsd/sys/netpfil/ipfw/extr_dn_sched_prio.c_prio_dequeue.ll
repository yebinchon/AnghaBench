; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_prio.c_prio_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_prio.c_prio_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.dn_sch_inst = type { i32 }
%struct.prio_si = type { i64, %struct.dn_queue** }
%struct.dn_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.dn_sch_inst*)* @prio_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @prio_dequeue(%struct.dn_sch_inst* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.dn_sch_inst*, align 8
  %4 = alloca %struct.prio_si*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.dn_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %3, align 8
  %8 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %3, align 8
  %9 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %8, i64 1
  %10 = bitcast %struct.dn_sch_inst* %9 to %struct.prio_si*
  store %struct.prio_si* %10, %struct.prio_si** %4, align 8
  %11 = load %struct.prio_si*, %struct.prio_si** %4, align 8
  %12 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.mbuf* null, %struct.mbuf** %2, align 8
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.prio_si*, %struct.prio_si** %4, align 8
  %18 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @ffs(i64 %19)
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load %struct.prio_si*, %struct.prio_si** %4, align 8
  %23 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %22, i32 0, i32 1
  %24 = load %struct.dn_queue**, %struct.dn_queue*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dn_queue*, %struct.dn_queue** %24, i64 %26
  %28 = load %struct.dn_queue*, %struct.dn_queue** %27, align 8
  store %struct.dn_queue* %28, %struct.dn_queue** %6, align 8
  %29 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %30 = call %struct.mbuf* @dn_dequeue(%struct.dn_queue* %29)
  store %struct.mbuf* %30, %struct.mbuf** %5, align 8
  %31 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %32 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %16
  %37 = load %struct.prio_si*, %struct.prio_si** %4, align 8
  %38 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %37, i32 0, i32 1
  %39 = load %struct.dn_queue**, %struct.dn_queue*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.dn_queue*, %struct.dn_queue** %39, i64 %41
  store %struct.dn_queue* null, %struct.dn_queue** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.prio_si*, %struct.prio_si** %4, align 8
  %45 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %44, i32 0, i32 0
  %46 = call i32 @__clear_bit(i32 %43, i64* %45)
  br label %47

47:                                               ; preds = %36, %16
  %48 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %48, %struct.mbuf** %2, align 8
  br label %49

49:                                               ; preds = %47, %15
  %50 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %50
}

declare dso_local i32 @ffs(i64) #1

declare dso_local %struct.mbuf* @dn_dequeue(%struct.dn_queue*) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
