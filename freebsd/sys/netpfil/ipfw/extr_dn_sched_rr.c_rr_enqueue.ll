; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_rr.c_rr_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_rr.c_rr_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch_inst = type { i32 }
%struct.dn_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mbuf* }
%struct.mbuf = type { i32 }
%struct.rr_si = type { i32 }
%struct.rr_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_sch_inst*, %struct.dn_queue*, %struct.mbuf*)* @rr_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rr_enqueue(%struct.dn_sch_inst* %0, %struct.dn_queue* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_sch_inst*, align 8
  %6 = alloca %struct.dn_queue*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.rr_si*, align 8
  %9 = alloca %struct.rr_queue*, align 8
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %5, align 8
  store %struct.dn_queue* %1, %struct.dn_queue** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %10 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %11 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %12 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %15 = icmp ne %struct.mbuf* %10, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %19 = call i64 @dn_enqueue(%struct.dn_queue* %17, %struct.mbuf* %18, i32 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %46

22:                                               ; preds = %16
  %23 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %24 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %25 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  %28 = icmp ne %struct.mbuf* %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %46

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %33 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %32, i64 1
  %34 = bitcast %struct.dn_sch_inst* %33 to %struct.rr_si*
  store %struct.rr_si* %34, %struct.rr_si** %8, align 8
  %35 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %36 = bitcast %struct.dn_queue* %35 to %struct.rr_queue*
  store %struct.rr_queue* %36, %struct.rr_queue** %9, align 8
  %37 = load %struct.rr_queue*, %struct.rr_queue** %9, align 8
  %38 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.rr_queue*, %struct.rr_queue** %9, align 8
  %44 = load %struct.rr_si*, %struct.rr_si** %8, align 8
  %45 = call i32 @rr_append(%struct.rr_queue* %43, %struct.rr_si* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %41, %29, %21
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @dn_enqueue(%struct.dn_queue*, %struct.mbuf*, i32) #1

declare dso_local i32 @rr_append(%struct.rr_queue*, %struct.rr_si*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
