; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sysctl.c_nvme_sysctl_initialize_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sysctl.c_nvme_sysctl_initialize_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"num_entries\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Number of entries in hardware queue\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"num_trackers\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Number of trackers pre-allocated for this queue pair\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sq_head\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Current head of submission queue (as observed by driver)\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"sq_tail\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Current tail of submission queue (as observed by driver)\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"cq_head\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Current head of completion queue (as observed by driver)\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"num_cmds\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Number of commands submitted\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"num_intr_handler_calls\00", align 1
@.str.13 = private unnamed_addr constant [132 x i8] c"Number of times interrupt handler was invoked (will typically be less than number of actual interrupts generated due to coalescing)\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"num_retries\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Number of commands retried\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"num_failures\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Number of commands ending in failure after all retries\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"dump_debug\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@nvme_sysctl_dump_debug = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Dump debug data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_qpair*, %struct.sysctl_ctx_list*, %struct.sysctl_oid*)* @nvme_sysctl_initialize_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_sysctl_initialize_queue(%struct.nvme_qpair* %0, %struct.sysctl_ctx_list* %1, %struct.sysctl_oid* %2) #0 {
  %4 = alloca %struct.nvme_qpair*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %4, align 8
  store %struct.sysctl_ctx_list* %1, %struct.sysctl_ctx_list** %5, align 8
  store %struct.sysctl_oid* %2, %struct.sysctl_oid** %6, align 8
  %8 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %9 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %8)
  store %struct.sysctl_oid_list* %9, %struct.sysctl_oid_list** %7, align 8
  %10 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %11 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %12 = load i32, i32* @OID_AUTO, align 4
  %13 = load i32, i32* @CTLFLAG_RD, align 4
  %14 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %15 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %14, i32 0, i32 8
  %16 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %10, %struct.sysctl_oid_list* %11, i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13, i32* %15, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %18 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %19 = load i32, i32* @OID_AUTO, align 4
  %20 = load i32, i32* @CTLFLAG_RD, align 4
  %21 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %21, i32 0, i32 7
  %23 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %17, %struct.sysctl_oid_list* %18, i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32* %22, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %24 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %25 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = load i32, i32* @CTLFLAG_RD, align 4
  %28 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %29 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %28, i32 0, i32 6
  %30 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %24, %struct.sysctl_oid_list* %25, i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %27, i32* %29, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %31 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %32 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %33 = load i32, i32* @OID_AUTO, align 4
  %34 = load i32, i32* @CTLFLAG_RD, align 4
  %35 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %36 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %35, i32 0, i32 5
  %37 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %31, %struct.sysctl_oid_list* %32, i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %34, i32* %36, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %38 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %39 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %40 = load i32, i32* @OID_AUTO, align 4
  %41 = load i32, i32* @CTLFLAG_RD, align 4
  %42 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %43 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %42, i32 0, i32 4
  %44 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %38, %struct.sysctl_oid_list* %39, i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %41, i32* %43, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %45 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %46 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %47 = load i32, i32* @OID_AUTO, align 4
  %48 = load i32, i32* @CTLFLAG_RD, align 4
  %49 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %49, i32 0, i32 3
  %51 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %45, %struct.sysctl_oid_list* %46, i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %48, i32* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %52 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %53 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLFLAG_RD, align 4
  %56 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %57 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %56, i32 0, i32 2
  %58 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %52, %struct.sysctl_oid_list* %53, i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %55, i32* %57, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.13, i64 0, i64 0))
  %59 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %60 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %61 = load i32, i32* @OID_AUTO, align 4
  %62 = load i32, i32* @CTLFLAG_RD, align 4
  %63 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %64 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %63, i32 0, i32 1
  %65 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %59, %struct.sysctl_oid_list* %60, i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %62, i32* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %66 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %67 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %68 = load i32, i32* @OID_AUTO, align 4
  %69 = load i32, i32* @CTLFLAG_RD, align 4
  %70 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %71 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %70, i32 0, i32 0
  %72 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %66, %struct.sysctl_oid_list* %67, i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %69, i32* %71, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0))
  %73 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %74 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %75 = load i32, i32* @OID_AUTO, align 4
  %76 = load i32, i32* @CTLTYPE_UINT, align 4
  %77 = load i32, i32* @CTLFLAG_RW, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %80 = load i32, i32* @nvme_sysctl_dump_debug, align 4
  %81 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %73, %struct.sysctl_oid_list* %74, i32 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %78, %struct.nvme_qpair* %79, i32 0, i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.nvme_qpair*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
