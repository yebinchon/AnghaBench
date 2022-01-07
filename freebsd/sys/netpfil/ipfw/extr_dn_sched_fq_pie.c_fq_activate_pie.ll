; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_activate_pie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_activate_pie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fq_pie_flow = type { %struct.pie_status }
%struct.pie_status = type { i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, %struct.dn_aqm_pie_parms* }
%struct.dn_aqm_pie_parms = type { i64, i32 }

@PIE_INMEASUREMENT = common dso_local global i32 0, align 4
@PIE_ACTIVE = common dso_local global i32 0, align 4
@AQM_UNOW = common dso_local global i32 0, align 4
@SBT_1US = common dso_local global i32 0, align 4
@fq_calculate_drop_prob = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fq_pie_flow*)* @fq_activate_pie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fq_activate_pie(%struct.fq_pie_flow* %0) #0 {
  %2 = alloca %struct.fq_pie_flow*, align 8
  %3 = alloca %struct.pie_status*, align 8
  %4 = alloca %struct.dn_aqm_pie_parms*, align 8
  store %struct.fq_pie_flow* %0, %struct.fq_pie_flow** %2, align 8
  %5 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %2, align 8
  %6 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %5, i32 0, i32 0
  store %struct.pie_status* %6, %struct.pie_status** %3, align 8
  %7 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %8 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %7, i32 0, i32 1
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %11 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %10, i32 0, i32 10
  %12 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %11, align 8
  store %struct.dn_aqm_pie_parms* %12, %struct.dn_aqm_pie_parms** %4, align 8
  %13 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %14 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %13, i32 0, i32 10
  %15 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %14, align 8
  store %struct.dn_aqm_pie_parms* %15, %struct.dn_aqm_pie_parms** %4, align 8
  %16 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %17 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %16, i32 0, i32 9
  store i64 0, i64* %17, align 8
  %18 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %19 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %18, i32 0, i32 8
  store i64 0, i64* %19, align 8
  %20 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %4, align 8
  %21 = getelementptr inbounds %struct.dn_aqm_pie_parms, %struct.dn_aqm_pie_parms* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %24 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %26 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %25, i32 0, i32 6
  store i64 0, i64* %26, align 8
  %27 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %28 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %30 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @PIE_INMEASUREMENT, align 4
  %32 = load i32, i32* @PIE_ACTIVE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %35 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @AQM_UNOW, align 4
  %37 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %38 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %40 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %39, i32 0, i32 2
  %41 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %4, align 8
  %42 = getelementptr inbounds %struct.dn_aqm_pie_parms, %struct.dn_aqm_pie_parms* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @SBT_1US, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* @fq_calculate_drop_prob, align 4
  %48 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %2, align 8
  %49 = call i32 @callout_reset_sbt(i32* %40, i32 %46, i32 0, i32 %47, %struct.fq_pie_flow* %48, i32 0)
  %50 = load %struct.pie_status*, %struct.pie_status** %3, align 8
  %51 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %50, i32 0, i32 1
  %52 = call i32 @mtx_unlock(i32* %51)
  ret void
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
