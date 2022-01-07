; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_pie_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_pie_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fq_pie_flow = type { %struct.TYPE_3__*, %struct.pie_status }
%struct.TYPE_3__ = type { i32 }
%struct.pie_status = type { i32, i32, i32, %struct.dn_aqm_pie_parms* }
%struct.dn_aqm_pie_parms = type { i32 }
%struct.fq_pie_schk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"AQM_PIE is not configured\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mtx_pie\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@CALLOUT_RETURNUNLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fq_pie_flow*, %struct.fq_pie_schk*)* @pie_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pie_init(%struct.fq_pie_flow* %0, %struct.fq_pie_schk* %1) #0 {
  %3 = alloca %struct.fq_pie_flow*, align 8
  %4 = alloca %struct.fq_pie_schk*, align 8
  %5 = alloca %struct.pie_status*, align 8
  %6 = alloca %struct.dn_aqm_pie_parms*, align 8
  %7 = alloca i32, align 4
  store %struct.fq_pie_flow* %0, %struct.fq_pie_flow** %3, align 8
  store %struct.fq_pie_schk* %1, %struct.fq_pie_schk** %4, align 8
  %8 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %3, align 8
  %9 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %8, i32 0, i32 1
  store %struct.pie_status* %9, %struct.pie_status** %5, align 8
  %10 = load %struct.pie_status*, %struct.pie_status** %5, align 8
  %11 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %10, i32 0, i32 3
  %12 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %11, align 8
  store %struct.dn_aqm_pie_parms* %12, %struct.dn_aqm_pie_parms** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %6, align 8
  %14 = icmp ne %struct.dn_aqm_pie_parms* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = call i32 @D(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %7, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %3, align 8
  %20 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %4, align 8
  %26 = getelementptr inbounds %struct.fq_pie_schk, %struct.fq_pie_schk* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %4, align 8
  %30 = getelementptr inbounds %struct.fq_pie_schk, %struct.fq_pie_schk* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %28, %32
  %34 = sdiv i32 %33, 3
  %35 = load %struct.pie_status*, %struct.pie_status** %5, align 8
  %36 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pie_status*, %struct.pie_status** %5, align 8
  %38 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %37, i32 0, i32 1
  %39 = load i32, i32* @MTX_DEF, align 4
  %40 = call i32 @mtx_init(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %39)
  %41 = load %struct.pie_status*, %struct.pie_status** %5, align 8
  %42 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %41, i32 0, i32 2
  %43 = load %struct.pie_status*, %struct.pie_status** %5, align 8
  %44 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %43, i32 0, i32 1
  %45 = load i32, i32* @CALLOUT_RETURNUNLOCKED, align 4
  %46 = call i32 @callout_init_mtx(i32* %42, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %18, %15
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @D(i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
