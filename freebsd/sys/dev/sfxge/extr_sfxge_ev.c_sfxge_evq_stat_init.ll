; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_evq_stat_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_evq_stat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_evq = type { i32, %struct.sfxge_softc* }
%struct.sfxge_softc = type { i32, %struct.sysctl_oid*, i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@EV_NQSTATS = common dso_local global i32 0, align 4
@CTLTYPE_U64 = common dso_local global i32 0, align 4
@sfxge_evq_stat_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_evq*)* @sfxge_evq_stat_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_evq_stat_init(%struct.sfxge_evq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_evq*, align 8
  %4 = alloca %struct.sfxge_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca i32, align 4
  store %struct.sfxge_evq* %0, %struct.sfxge_evq** %3, align 8
  %9 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %10 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %9, i32 0, i32 1
  %11 = load %struct.sfxge_softc*, %struct.sfxge_softc** %10, align 8
  store %struct.sfxge_softc* %11, %struct.sfxge_softc** %4, align 8
  %12 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %13 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %14)
  store %struct.sysctl_ctx_list* %15, %struct.sysctl_ctx_list** %5, align 8
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %17 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %18 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snprintf(i8* %16, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %22 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %23 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %22, i32 0, i32 1
  %24 = load %struct.sysctl_oid*, %struct.sysctl_oid** %23, align 8
  %25 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %24)
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %28 = load i32, i32* @CTLFLAG_RD, align 4
  %29 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %21, i32 %25, i32 %26, i8* %27, i32 %28, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %29, %struct.sysctl_oid** %7, align 8
  %30 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %31 = icmp eq %struct.sysctl_oid* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %60

34:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EV_NQSTATS, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %41 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %42 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %41)
  %43 = load i32, i32* @OID_AUTO, align 4
  %44 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %45 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @efx_ev_qstat_name(i32 %46, i32 %47)
  %49 = load i32, i32* @CTLTYPE_U64, align 4
  %50 = load i32, i32* @CTLFLAG_RD, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @sfxge_evq_stat_handler, align 4
  %55 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %40, i32 %42, i32 %43, i32 %48, i32 %51, %struct.sfxge_evq* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %39
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %35

59:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %32
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i32, i32, %struct.sfxge_evq*, i32, i32, i8*, i8*) #1

declare dso_local i32 @efx_ev_qstat_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
