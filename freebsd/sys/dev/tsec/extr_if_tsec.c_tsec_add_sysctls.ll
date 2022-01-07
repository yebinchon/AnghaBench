; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_add_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_add_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"int_coal\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"TSEC Interrupts coalescing\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rx_time\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@TSEC_IC_RX = common dso_local global i32 0, align 4
@tsec_sysctl_ic_time = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"IC RX time threshold (0-65535)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"rx_count\00", align 1
@tsec_sysctl_ic_count = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"IC RX frame count threshold (0-255)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"tx_time\00", align 1
@TSEC_IC_TX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"IC TX time threshold (0-65535)\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"tx_count\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"IC TX frame count threshold (0-255)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*)* @tsec_add_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_add_sysctls(%struct.tsec_softc* %0) #0 {
  %2 = alloca %struct.tsec_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  store %struct.tsec_softc* %0, %struct.tsec_softc** %2, align 8
  %6 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %7 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %11 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %12)
  %14 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %13)
  store %struct.sysctl_oid_list* %14, %struct.sysctl_oid_list** %4, align 8
  %15 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %16 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %17 = load i32, i32* @OID_AUTO, align 4
  %18 = load i32, i32* @CTLFLAG_RD, align 4
  %19 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %15, %struct.sysctl_oid_list* %16, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %19, %struct.sysctl_oid** %5, align 8
  %20 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %21 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %20)
  store %struct.sysctl_oid_list* %21, %struct.sysctl_oid_list** %4, align 8
  %22 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %23 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %24 = load i32, i32* @OID_AUTO, align 4
  %25 = load i32, i32* @CTLTYPE_UINT, align 4
  %26 = load i32, i32* @CTLFLAG_RW, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %29 = load i32, i32* @TSEC_IC_RX, align 4
  %30 = load i32, i32* @tsec_sysctl_ic_time, align 4
  %31 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %22, %struct.sysctl_oid_list* %23, i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %27, %struct.tsec_softc* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %32 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %33 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %34 = load i32, i32* @OID_AUTO, align 4
  %35 = load i32, i32* @CTLTYPE_UINT, align 4
  %36 = load i32, i32* @CTLFLAG_RW, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %39 = load i32, i32* @TSEC_IC_RX, align 4
  %40 = load i32, i32* @tsec_sysctl_ic_count, align 4
  %41 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %32, %struct.sysctl_oid_list* %33, i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %37, %struct.tsec_softc* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %42 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %43 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %44 = load i32, i32* @OID_AUTO, align 4
  %45 = load i32, i32* @CTLTYPE_UINT, align 4
  %46 = load i32, i32* @CTLFLAG_RW, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %49 = load i32, i32* @TSEC_IC_TX, align 4
  %50 = load i32, i32* @tsec_sysctl_ic_time, align 4
  %51 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %42, %struct.sysctl_oid_list* %43, i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %47, %struct.tsec_softc* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %52 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %53 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLTYPE_UINT, align 4
  %56 = load i32, i32* @CTLFLAG_RW, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %59 = load i32, i32* @TSEC_IC_TX, align 4
  %60 = load i32, i32* @tsec_sysctl_ic_count, align 4
  %61 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %52, %struct.sysctl_oid_list* %53, i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %57, %struct.tsec_softc* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.tsec_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
