; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_pie_drop_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_pie_drop_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.fq_pie_flow = type { %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.mbuf* }
%struct.mbuf = type { %struct.TYPE_11__, %struct.mbuf* }
%struct.TYPE_11__ = type { i32 }
%struct.fq_pie_si = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@dn_cfg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fq_pie_flow*, %struct.fq_pie_si*)* @pie_drop_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pie_drop_head(%struct.fq_pie_flow* %0, %struct.fq_pie_si* %1) #0 {
  %3 = alloca %struct.fq_pie_flow*, align 8
  %4 = alloca %struct.fq_pie_si*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store %struct.fq_pie_flow* %0, %struct.fq_pie_flow** %3, align 8
  store %struct.fq_pie_si* %1, %struct.fq_pie_si** %4, align 8
  %6 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %3, align 8
  %7 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %9, %struct.mbuf** %5, align 8
  %10 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %11 = icmp eq %struct.mbuf* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %45

13:                                               ; preds = %2
  %14 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 1
  %16 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %17 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %3, align 8
  %18 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store %struct.mbuf* %16, %struct.mbuf** %19, align 8
  %20 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %3, align 8
  %21 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 0, %25
  %27 = call i32 @fq_update_stats(%struct.fq_pie_flow* %20, %struct.fq_pie_si* %21, i32 %26, i32 1)
  %28 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %29 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %13
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dn_cfg, i32 0, i32 0), align 4
  %36 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %37 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  br label %39

39:                                               ; preds = %34, %13
  %40 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %3, align 8
  %41 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %44 = call i32 @FREE_PKT(%struct.mbuf* %43)
  br label %45

45:                                               ; preds = %39, %12
  ret void
}

declare dso_local i32 @fq_update_stats(%struct.fq_pie_flow*, %struct.fq_pie_si*, i32, i32) #1

declare dso_local i32 @FREE_PKT(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
