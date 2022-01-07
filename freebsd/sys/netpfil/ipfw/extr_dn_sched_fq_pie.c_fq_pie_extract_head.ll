; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_pie_extract_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_pie_extract_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_7__, %struct.mbuf* }
%struct.TYPE_7__ = type { i32 }
%struct.fq_pie_flow = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mbuf* }
%struct.fq_pie_si = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.m_tag = type { i32 }

@dn_cfg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@MTAG_ABI_COMPAT = common dso_local global i32 0, align 4
@DN_AQM_MTAG_TS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PIE timestamp mtag not found!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.fq_pie_flow*, i32*, %struct.fq_pie_si*, i32)* @fq_pie_extract_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @fq_pie_extract_head(%struct.fq_pie_flow* %0, i32* %1, %struct.fq_pie_si* %2, i32 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.fq_pie_flow*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fq_pie_si*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.m_tag*, align 8
  store %struct.fq_pie_flow* %0, %struct.fq_pie_flow** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.fq_pie_si* %2, %struct.fq_pie_si** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %6, align 8
  %13 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %15, %struct.mbuf** %10, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %17 = icmp eq %struct.mbuf* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %19, %struct.mbuf** %5, align 8
  br label %71

20:                                               ; preds = %4
  %21 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 1
  %23 = load %struct.mbuf*, %struct.mbuf** %22, align 8
  %24 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %6, align 8
  %25 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.mbuf* %23, %struct.mbuf** %26, align 8
  %27 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %6, align 8
  %28 = load %struct.fq_pie_si*, %struct.fq_pie_si** %8, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 0, %32
  %34 = call i32 @fq_update_stats(%struct.fq_pie_flow* %27, %struct.fq_pie_si* %28, i32 %33, i32 0)
  %35 = load %struct.fq_pie_si*, %struct.fq_pie_si** %8, align 8
  %36 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %20
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dn_cfg, i32 0, i32 0), align 4
  %43 = load %struct.fq_pie_si*, %struct.fq_pie_si** %8, align 8
  %44 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  br label %46

46:                                               ; preds = %41, %20
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %51 = load i32, i32* @MTAG_ABI_COMPAT, align 4
  %52 = load i32, i32* @DN_AQM_MTAG_TS, align 4
  %53 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %50, i32 %51, i32 %52, i32* null)
  store %struct.m_tag* %53, %struct.m_tag** %11, align 8
  %54 = load %struct.m_tag*, %struct.m_tag** %11, align 8
  %55 = icmp eq %struct.m_tag* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = call i32 @D(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %58 = load i32*, i32** %7, align 8
  store i32 0, i32* %58, align 4
  br label %68

59:                                               ; preds = %49
  %60 = load %struct.m_tag*, %struct.m_tag** %11, align 8
  %61 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %60, i64 1
  %62 = bitcast %struct.m_tag* %61 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %66 = load %struct.m_tag*, %struct.m_tag** %11, align 8
  %67 = call i32 @m_tag_delete(%struct.mbuf* %65, %struct.m_tag* %66)
  br label %68

68:                                               ; preds = %59, %56
  br label %69

69:                                               ; preds = %68, %46
  %70 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %70, %struct.mbuf** %5, align 8
  br label %71

71:                                               ; preds = %69, %18
  %72 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %72
}

declare dso_local i32 @fq_update_stats(%struct.fq_pie_flow*, %struct.fq_pie_si*, i32, i32) #1

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @D(i8*) #1

declare dso_local i32 @m_tag_delete(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
