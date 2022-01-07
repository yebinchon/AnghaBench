; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fqpie_callout_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fqpie_callout_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fq_pie_flow = type { %struct.fq_pie_si_extra*, %struct.pie_status }
%struct.fq_pie_si_extra = type { %struct.fq_pie_si_extra*, i32 }
%struct.pie_status = type { i32 }

@M_DUMMYNET = common dso_local global i32 0, align 4
@fq_pie_desc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fqpie_callout_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fqpie_callout_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fq_pie_flow*, align 8
  %4 = alloca %struct.pie_status*, align 8
  %5 = alloca %struct.fq_pie_si_extra*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.fq_pie_flow*
  store %struct.fq_pie_flow* %7, %struct.fq_pie_flow** %3, align 8
  %8 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %3, align 8
  %9 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %8, i32 0, i32 1
  store %struct.pie_status* %9, %struct.pie_status** %4, align 8
  %10 = load %struct.pie_status*, %struct.pie_status** %4, align 8
  %11 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %10, i32 0, i32 0
  %12 = call i32 @mtx_unlock(i32* %11)
  %13 = load %struct.pie_status*, %struct.pie_status** %4, align 8
  %14 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %13, i32 0, i32 0
  %15 = call i32 @mtx_destroy(i32* %14)
  %16 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %3, align 8
  %17 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %16, i32 0, i32 0
  %18 = load %struct.fq_pie_si_extra*, %struct.fq_pie_si_extra** %17, align 8
  store %struct.fq_pie_si_extra* %18, %struct.fq_pie_si_extra** %5, align 8
  %19 = call i32 (...) @DN_BH_WLOCK()
  %20 = load %struct.fq_pie_si_extra*, %struct.fq_pie_si_extra** %5, align 8
  %21 = getelementptr inbounds %struct.fq_pie_si_extra, %struct.fq_pie_si_extra* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.fq_pie_si_extra*, %struct.fq_pie_si_extra** %5, align 8
  %25 = getelementptr inbounds %struct.fq_pie_si_extra, %struct.fq_pie_si_extra* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %1
  %29 = load %struct.fq_pie_si_extra*, %struct.fq_pie_si_extra** %5, align 8
  %30 = getelementptr inbounds %struct.fq_pie_si_extra, %struct.fq_pie_si_extra* %29, i32 0, i32 0
  %31 = load %struct.fq_pie_si_extra*, %struct.fq_pie_si_extra** %30, align 8
  %32 = load i32, i32* @M_DUMMYNET, align 4
  %33 = call i32 @free(%struct.fq_pie_si_extra* %31, i32 %32)
  %34 = load %struct.fq_pie_si_extra*, %struct.fq_pie_si_extra** %5, align 8
  %35 = load i32, i32* @M_DUMMYNET, align 4
  %36 = call i32 @free(%struct.fq_pie_si_extra* %34, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fq_pie_desc, i32 0, i32 0), align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fq_pie_desc, i32 0, i32 0), align 4
  br label %39

39:                                               ; preds = %28, %1
  %40 = call i32 (...) @DN_BH_WUNLOCK()
  ret void
}

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @DN_BH_WLOCK(...) #1

declare dso_local i32 @free(%struct.fq_pie_si_extra*, i32) #1

declare dso_local i32 @DN_BH_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
