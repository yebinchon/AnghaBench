; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_sysctlattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_sysctlattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i64, i64, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@iwi_sysctl_radio = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"radio transmitter switch state (0=off, 1=on)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLTYPE_OPAQUE = common dso_local global i32 0, align 4
@iwi_sysctl_stats = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"bluetooth\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"bluetooth coexistence\00", align 1
@IWI_ANTENNA_AUTO = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"antenna\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"antenna (0=auto)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*)* @iwi_sysctlattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_sysctlattach(%struct.iwi_softc* %0) #0 {
  %2 = alloca %struct.iwi_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %2, align 8
  %5 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %7)
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %3, align 8
  %9 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %11)
  store %struct.sysctl_oid* %12, %struct.sysctl_oid** %4, align 8
  %13 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %14 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %15 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %14)
  %16 = load i32, i32* @OID_AUTO, align 4
  %17 = load i32, i32* @CTLTYPE_INT, align 4
  %18 = load i32, i32* @CTLFLAG_RD, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %21 = load i32, i32* @iwi_sysctl_radio, align 4
  %22 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %13, i32 %15, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.iwi_softc* %20, i32 0, i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %24 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %25 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %24)
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = load i32, i32* @CTLTYPE_OPAQUE, align 4
  %28 = load i32, i32* @CTLFLAG_RD, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %31 = load i32, i32* @iwi_sysctl_stats, align 4
  %32 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %23, i32 %25, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %29, %struct.iwi_softc* %30, i32 0, i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %33 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %34 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %36 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %37 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %36)
  %38 = load i32, i32* @OID_AUTO, align 4
  %39 = load i32, i32* @CTLFLAG_RW, align 4
  %40 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %41 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %40, i32 0, i32 1
  %42 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %35, i32 %37, i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %39, i64* %41, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %43 = load i64, i64* @IWI_ANTENNA_AUTO, align 8
  %44 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %45 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %47 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %48 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %47)
  %49 = load i32, i32* @OID_AUTO, align 4
  %50 = load i32, i32* @CTLFLAG_RW, align 4
  %51 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %52 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %51, i32 0, i32 0
  %53 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %46, i32 %48, i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %50, i64* %52, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.iwi_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i64*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
