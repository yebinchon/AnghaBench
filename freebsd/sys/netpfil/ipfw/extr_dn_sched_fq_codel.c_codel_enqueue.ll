; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_codel.c_codel_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_codel.c_codel_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fq_codel_flow = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.fq_codel_si = type { i32 }
%struct.m_tag = type { i32 }

@MTAG_ABI_COMPAT = common dso_local global i32 0, align 4
@DN_AQM_MTAG_TS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@AQM_UNOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fq_codel_flow*, %struct.mbuf*, %struct.fq_codel_si*)* @codel_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codel_enqueue(%struct.fq_codel_flow* %0, %struct.mbuf* %1, %struct.fq_codel_si* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fq_codel_flow*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.fq_codel_si*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.m_tag*, align 8
  store %struct.fq_codel_flow* %0, %struct.fq_codel_flow** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.fq_codel_si* %2, %struct.fq_codel_si** %7, align 8
  %10 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %11 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %5, align 8
  %16 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %14, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %5, align 8
  %23 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  br label %25

25:                                               ; preds = %20, %3
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = load i32, i32* @MTAG_ABI_COMPAT, align 4
  %28 = load i32, i32* @DN_AQM_MTAG_TS, align 4
  %29 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %26, i32 %27, i32 %28, i32* null)
  store %struct.m_tag* %29, %struct.m_tag** %9, align 8
  %30 = load %struct.m_tag*, %struct.m_tag** %9, align 8
  %31 = icmp eq %struct.m_tag* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @MTAG_ABI_COMPAT, align 4
  %34 = load i32, i32* @DN_AQM_MTAG_TS, align 4
  %35 = load i32, i32* @M_NOWAIT, align 4
  %36 = call %struct.m_tag* @m_tag_alloc(i32 %33, i32 %34, i32 4, i32 %35)
  store %struct.m_tag* %36, %struct.m_tag** %9, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.m_tag*, %struct.m_tag** %9, align 8
  %39 = icmp eq %struct.m_tag* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %42 = call i32 @m_freem(%struct.mbuf* %41)
  br label %59

43:                                               ; preds = %37
  %44 = load i32, i32* @AQM_UNOW, align 4
  %45 = load %struct.m_tag*, %struct.m_tag** %9, align 8
  %46 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %45, i64 1
  %47 = bitcast %struct.m_tag* %46 to i32*
  store i32 %44, i32* %47, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %49 = load %struct.m_tag*, %struct.m_tag** %9, align 8
  %50 = call i32 @m_tag_prepend(%struct.mbuf* %48, %struct.m_tag* %49)
  %51 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %5, align 8
  %52 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %51, i32 0, i32 0
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = call i32 @mq_append(i32* %52, %struct.mbuf* %53)
  %55 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %5, align 8
  %56 = load %struct.fq_codel_si*, %struct.fq_codel_si** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @fq_update_stats(%struct.fq_codel_flow* %55, %struct.fq_codel_si* %56, i64 %57, i32 0)
  store i32 0, i32* %4, align 4
  br label %66

59:                                               ; preds = %40
  %60 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %5, align 8
  %61 = load %struct.fq_codel_si*, %struct.fq_codel_si** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @fq_update_stats(%struct.fq_codel_flow* %60, %struct.fq_codel_si* %61, i64 %62, i32 1)
  %64 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %65 = call i32 @m_freem(%struct.mbuf* %64)
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %43
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local %struct.m_tag* @m_tag_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

declare dso_local i32 @mq_append(i32*, %struct.mbuf*) #1

declare dso_local i32 @fq_update_stats(%struct.fq_codel_flow*, %struct.fq_codel_si*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
