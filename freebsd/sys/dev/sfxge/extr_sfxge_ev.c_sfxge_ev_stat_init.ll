; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_stat_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_stat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@EV_NQSTATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ev_%s\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_U64 = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@sfxge_ev_stat_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_softc*)* @sfxge_ev_stat_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_ev_stat_init(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [40 x i8], align 16
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %7 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %9)
  store %struct.sysctl_ctx_list* %10, %struct.sysctl_ctx_list** %3, align 8
  %11 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %12 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %13)
  store %struct.sysctl_oid_list* %14, %struct.sysctl_oid_list** %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %38, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @EV_NQSTATS, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %21 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %22 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @efx_ev_qstat_name(i32 %23, i32 %24)
  %26 = call i32 @snprintf(i8* %20, i32 40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %28 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %29 = load i32, i32* @OID_AUTO, align 4
  %30 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %31 = load i32, i32* @CTLTYPE_U64, align 4
  %32 = load i32, i32* @CTLFLAG_RD, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @sfxge_ev_stat_handler, align 4
  %37 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %27, %struct.sysctl_oid_list* %28, i32 %29, i8* %30, i32 %33, %struct.sfxge_softc* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %19
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %15

41:                                               ; preds = %15
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @efx_ev_qstat_name(i32, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.sfxge_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
