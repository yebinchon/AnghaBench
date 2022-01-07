; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_add_iq_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_add_iq_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sge_iq = type { i32, i32, i32, i32, i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ba\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"bus address of descriptor ring\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dmalen\00", align 1
@IQ_ESIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"descriptor ring size in bytes\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"abs_id\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@sysctl_uint16 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"absolute id of the queue\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"cntxt_id\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"SGE context id of the queue\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"cidx\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"consumer index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysctl_ctx_list*, %struct.sysctl_oid*, %struct.sge_iq*)* @add_iq_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_iq_sysctls(%struct.sysctl_ctx_list* %0, %struct.sysctl_oid* %1, %struct.sge_iq* %2) #0 {
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sge_iq*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.sysctl_ctx_list* %0, %struct.sysctl_ctx_list** %4, align 8
  store %struct.sysctl_oid* %1, %struct.sysctl_oid** %5, align 8
  store %struct.sge_iq* %2, %struct.sge_iq** %6, align 8
  %8 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %9 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %8)
  store %struct.sysctl_oid_list* %9, %struct.sysctl_oid_list** %7, align 8
  %10 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %11 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %12 = load i32, i32* @OID_AUTO, align 4
  %13 = load i32, i32* @CTLFLAG_RD, align 4
  %14 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %15 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %14, i32 0, i32 4
  %16 = call i32 @SYSCTL_ADD_UAUTO(%struct.sysctl_ctx_list* %10, %struct.sysctl_oid_list* %11, i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13, i32* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %18 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %19 = load i32, i32* @OID_AUTO, align 4
  %20 = load i32, i32* @CTLFLAG_RD, align 4
  %21 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %22 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IQ_ESIZE, align 4
  %25 = mul nsw i32 %23, %24
  %26 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %17, %struct.sysctl_oid_list* %18, i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32* null, i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %27 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %28 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %29 = load i32, i32* @OID_AUTO, align 4
  %30 = load i32, i32* @CTLTYPE_INT, align 4
  %31 = load i32, i32* @CTLFLAG_RD, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %34 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %33, i32 0, i32 3
  %35 = load i32, i32* @sysctl_uint16, align 4
  %36 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %27, %struct.sysctl_oid_list* %28, i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %32, i32* %34, i32 0, i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %37 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %38 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %39 = load i32, i32* @OID_AUTO, align 4
  %40 = load i32, i32* @CTLTYPE_INT, align 4
  %41 = load i32, i32* @CTLFLAG_RD, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %44 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %43, i32 0, i32 2
  %45 = load i32, i32* @sysctl_uint16, align 4
  %46 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %37, %struct.sysctl_oid_list* %38, i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %42, i32* %44, i32 0, i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %47 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %48 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %49 = load i32, i32* @OID_AUTO, align 4
  %50 = load i32, i32* @CTLTYPE_INT, align 4
  %51 = load i32, i32* @CTLFLAG_RD, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %54 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %53, i32 0, i32 1
  %55 = load i32, i32* @sysctl_uint16, align 4
  %56 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %47, %struct.sysctl_oid_list* %48, i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %52, i32* %54, i32 0, i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UAUTO(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
