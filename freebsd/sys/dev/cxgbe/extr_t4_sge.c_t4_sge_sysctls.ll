; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_sge_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_sge_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sge_params }
%struct.sge_params = type { i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"buffer_sizes\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@sysctl_bufsizes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"freelist buffer sizes\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"fl_pktshift\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"payload DMA offset in rx buffer (bytes)\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"fl_pad\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"payload pad boundary (bytes)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"spg_len\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"status page size (bytes)\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"cong_drop\00", align 1
@cong_drop = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"congestion drop setting\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"fl_pack\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"payload pack boundary (bytes)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_sge_sysctls(%struct.adapter* %0, %struct.sysctl_ctx_list* %1, %struct.sysctl_oid_list* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca %struct.sge_params*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.sysctl_ctx_list* %1, %struct.sysctl_ctx_list** %5, align 8
  store %struct.sysctl_oid_list* %2, %struct.sysctl_oid_list** %6, align 8
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.sge_params* %10, %struct.sge_params** %7, align 8
  %11 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %12 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %13 = load i32, i32* @OID_AUTO, align 4
  %14 = load i32, i32* @CTLTYPE_STRING, align 4
  %15 = load i32, i32* @CTLFLAG_RD, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = load i32, i32* @sysctl_bufsizes, align 4
  %20 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %11, %struct.sysctl_oid_list* %12, i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16, i32* %18, i32 0, i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %22 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %23 = load i32, i32* @OID_AUTO, align 4
  %24 = load i32, i32* @CTLFLAG_RD, align 4
  %25 = load %struct.sge_params*, %struct.sge_params** %7, align 8
  %26 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %21, %struct.sysctl_oid_list* %22, i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32* null, i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %29 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %30 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %31 = load i32, i32* @OID_AUTO, align 4
  %32 = load i32, i32* @CTLFLAG_RD, align 4
  %33 = load %struct.sge_params*, %struct.sge_params** %7, align 8
  %34 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %29, %struct.sysctl_oid_list* %30, i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %32, i32* null, i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %37 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %38 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %39 = load i32, i32* @OID_AUTO, align 4
  %40 = load i32, i32* @CTLFLAG_RD, align 4
  %41 = load %struct.sge_params*, %struct.sge_params** %7, align 8
  %42 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %37, %struct.sysctl_oid_list* %38, i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %40, i32* null, i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %45 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %46 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %47 = load i32, i32* @OID_AUTO, align 4
  %48 = load i32, i32* @CTLFLAG_RD, align 4
  %49 = load i32, i32* @cong_drop, align 4
  %50 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %45, %struct.sysctl_oid_list* %46, i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %48, i32* null, i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %51 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %52 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %53 = load i32, i32* @OID_AUTO, align 4
  %54 = load i32, i32* @CTLFLAG_RD, align 4
  %55 = load %struct.sge_params*, %struct.sge_params** %7, align 8
  %56 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %51, %struct.sysctl_oid_list* %52, i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %54, i32* null, i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
