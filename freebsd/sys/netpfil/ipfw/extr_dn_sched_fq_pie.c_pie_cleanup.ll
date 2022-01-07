; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_pie_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_pie_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fq_pie_flow = type { %struct.pie_status }
%struct.pie_status = type { i32, i32 }

@SBT_1US = common dso_local global i32 0, align 4
@fqpie_callout_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fq_pie_flow*)* @pie_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pie_cleanup(%struct.fq_pie_flow* %0) #0 {
  %2 = alloca %struct.fq_pie_flow*, align 8
  %3 = alloca %struct.pie_status*, align 8
  store %struct.fq_pie_flow* %0, %struct.fq_pie_flow** %2, align 8
  %4 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %2, align 8
  %5 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %4, i32 0, i32 0
  store %struct.pie_status* %5, %struct.pie_status** %3, align 8
  %6 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %7 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %6, i32 0, i32 0
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %10 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %9, i32 0, i32 1
  %11 = load i32, i32* @SBT_1US, align 4
  %12 = load i32, i32* @fqpie_callout_cleanup, align 4
  %13 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %2, align 8
  %14 = call i32 @callout_reset_sbt(i32* %10, i32 %11, i32 0, i32 %12, %struct.fq_pie_flow* %13, i32 0)
  %15 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %16 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %15, i32 0, i32 0
  %17 = call i32 @mtx_unlock(i32* %16)
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, %struct.fq_pie_flow*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
