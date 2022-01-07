; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_ath_rate_sysctlattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_ath_rate_sysctlattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.sample_softc = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"smoothing_rate\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@ath_rate_sysctl_smoothing_rate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"sample: smoothing rate for avg tx time (%%)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"sample_rate\00", align 1
@ath_rate_sysctl_sample_rate = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"sample: percent air time devoted to sampling new rates (%%)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"sample_stats\00", align 1
@ath_rate_sysctl_stats = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"sample: print statistics\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.sample_softc*)* @ath_rate_sysctlattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rate_sysctlattach(%struct.ath_softc* %0, %struct.sample_softc* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.sample_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.sample_softc* %1, %struct.sample_softc** %4, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %9)
  store %struct.sysctl_ctx_list* %10, %struct.sysctl_ctx_list** %5, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %13)
  store %struct.sysctl_oid* %14, %struct.sysctl_oid** %6, align 8
  %15 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %16 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %17 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %16)
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLTYPE_INT, align 4
  %20 = load i32, i32* @CTLFLAG_RW, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.sample_softc*, %struct.sample_softc** %4, align 8
  %23 = load i32, i32* @ath_rate_sysctl_smoothing_rate, align 4
  %24 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %15, i32 %17, i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.sample_softc* %22, i32 0, i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %26 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %27 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %26)
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLTYPE_INT, align 4
  %30 = load i32, i32* @CTLFLAG_RW, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.sample_softc*, %struct.sample_softc** %4, align 8
  %33 = load i32, i32* @ath_rate_sysctl_sample_rate, align 4
  %34 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %25, i32 %27, i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %31, %struct.sample_softc* %32, i32 0, i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %35 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %36 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %37 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %36)
  %38 = load i32, i32* @OID_AUTO, align 4
  %39 = load i32, i32* @CTLTYPE_INT, align 4
  %40 = load i32, i32* @CTLFLAG_RW, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %43 = bitcast %struct.ath_softc* %42 to %struct.sample_softc*
  %44 = load i32, i32* @ath_rate_sysctl_stats, align 4
  %45 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %35, i32 %37, i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %41, %struct.sample_softc* %43, i32 0, i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.sample_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
