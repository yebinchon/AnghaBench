; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sysctl.c_nvme_sysctl_initialize_ctrlr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sysctl.c_nvme_sysctl_initialize_ctrlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i32*, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"num_io_queues\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Number of I/O queue pairs\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"int_coal_time\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@nvme_sysctl_int_coal_time = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Interrupt coalescing timeout (in microseconds)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"int_coal_threshold\00", align 1
@nvme_sysctl_int_coal_threshold = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Interrupt coalescing threshold\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"timeout_period\00", align 1
@nvme_sysctl_timeout_period = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Timeout period (in seconds)\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"num_cmds\00", align 1
@CTLTYPE_S64 = common dso_local global i32 0, align 4
@nvme_sysctl_num_cmds = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Number of commands submitted\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"num_intr_handler_calls\00", align 1
@nvme_sysctl_num_intr_handler_calls = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [132 x i8] c"Number of times interrupt handler was invoked (will typically be less than number of actual interrupts generated due to coalescing)\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"num_retries\00", align 1
@nvme_sysctl_num_retries = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"Number of commands retried\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"num_failures\00", align 1
@nvme_sysctl_num_failures = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [55 x i8] c"Number of commands ending in failure after all retries\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"reset_stats\00", align 1
@nvme_sysctl_reset_stats = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [25 x i8] c"Reset statistics to zero\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"adminq\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Admin Queue\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"ioq%d\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"IO Queue\00", align 1
@QUEUE_NAME_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_sysctl_initialize_ctrlr(%struct.nvme_controller* %0) #0 {
  %2 = alloca %struct.nvme_controller*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %2, align 8
  %9 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %10 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %11)
  store %struct.sysctl_ctx_list* %12, %struct.sysctl_ctx_list** %3, align 8
  %13 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %14 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %15)
  store %struct.sysctl_oid* %16, %struct.sysctl_oid** %4, align 8
  %17 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %18 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %17)
  store %struct.sysctl_oid_list* %18, %struct.sysctl_oid_list** %6, align 8
  %19 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %20 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLFLAG_RD, align 4
  %23 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %24 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %23, i32 0, i32 0
  %25 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %19, %struct.sysctl_oid_list* %20, i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22, i32* %24, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %27 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLTYPE_UINT, align 4
  %30 = load i32, i32* @CTLFLAG_RW, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %33 = load i32, i32* @nvme_sysctl_int_coal_time, align 4
  %34 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %26, %struct.sysctl_oid_list* %27, i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %31, %struct.nvme_controller* %32, i32 0, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %35 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %36 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %37 = load i32, i32* @OID_AUTO, align 4
  %38 = load i32, i32* @CTLTYPE_UINT, align 4
  %39 = load i32, i32* @CTLFLAG_RW, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %42 = load i32, i32* @nvme_sysctl_int_coal_threshold, align 4
  %43 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %35, %struct.sysctl_oid_list* %36, i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %40, %struct.nvme_controller* %41, i32 0, i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %44 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %45 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %46 = load i32, i32* @OID_AUTO, align 4
  %47 = load i32, i32* @CTLTYPE_UINT, align 4
  %48 = load i32, i32* @CTLFLAG_RW, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %51 = load i32, i32* @nvme_sysctl_timeout_period, align 4
  %52 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %44, %struct.sysctl_oid_list* %45, i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %49, %struct.nvme_controller* %50, i32 0, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %53 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %54 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %55 = load i32, i32* @OID_AUTO, align 4
  %56 = load i32, i32* @CTLTYPE_S64, align 4
  %57 = load i32, i32* @CTLFLAG_RD, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %60 = load i32, i32* @nvme_sysctl_num_cmds, align 4
  %61 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %53, %struct.sysctl_oid_list* %54, i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %58, %struct.nvme_controller* %59, i32 0, i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %62 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %63 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %64 = load i32, i32* @OID_AUTO, align 4
  %65 = load i32, i32* @CTLTYPE_S64, align 4
  %66 = load i32, i32* @CTLFLAG_RD, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %69 = load i32, i32* @nvme_sysctl_num_intr_handler_calls, align 4
  %70 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %62, %struct.sysctl_oid_list* %63, i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %67, %struct.nvme_controller* %68, i32 0, i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.12, i64 0, i64 0))
  %71 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %72 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %73 = load i32, i32* @OID_AUTO, align 4
  %74 = load i32, i32* @CTLTYPE_S64, align 4
  %75 = load i32, i32* @CTLFLAG_RD, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %78 = load i32, i32* @nvme_sysctl_num_retries, align 4
  %79 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %71, %struct.sysctl_oid_list* %72, i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %76, %struct.nvme_controller* %77, i32 0, i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %80 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %81 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %82 = load i32, i32* @OID_AUTO, align 4
  %83 = load i32, i32* @CTLTYPE_S64, align 4
  %84 = load i32, i32* @CTLFLAG_RD, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %87 = load i32, i32* @nvme_sysctl_num_failures, align 4
  %88 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %80, %struct.sysctl_oid_list* %81, i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %85, %struct.nvme_controller* %86, i32 0, i32 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0))
  %89 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %90 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %91 = load i32, i32* @OID_AUTO, align 4
  %92 = load i32, i32* @CTLTYPE_UINT, align 4
  %93 = load i32, i32* @CTLFLAG_RW, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %96 = load i32, i32* @nvme_sysctl_reset_stats, align 4
  %97 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %89, %struct.sysctl_oid_list* %90, i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %94, %struct.nvme_controller* %95, i32 0, i32 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %98 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %99 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %100 = load i32, i32* @OID_AUTO, align 4
  %101 = load i32, i32* @CTLFLAG_RD, align 4
  %102 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %98, %struct.sysctl_oid_list* %99, i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %101, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  store %struct.sysctl_oid* %102, %struct.sysctl_oid** %5, align 8
  %103 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %104 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %103, i32 0, i32 2
  %105 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %106 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %107 = call i32 @nvme_sysctl_initialize_queue(i32* %104, %struct.sysctl_ctx_list* %105, %struct.sysctl_oid* %106)
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %133, %1
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %111 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %108
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @snprintf(i8* %115, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %116)
  %118 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %119 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %120 = load i32, i32* @OID_AUTO, align 4
  %121 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %122 = load i32, i32* @CTLFLAG_RD, align 4
  %123 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %118, %struct.sysctl_oid_list* %119, i32 %120, i8* %121, i32 %122, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  store %struct.sysctl_oid* %123, %struct.sysctl_oid** %5, align 8
  %124 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %125 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %131 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %132 = call i32 @nvme_sysctl_initialize_queue(i32* %129, %struct.sysctl_ctx_list* %130, %struct.sysctl_oid* %131)
  br label %133

133:                                              ; preds = %114
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %108

136:                                              ; preds = %108
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.nvme_controller*, i32, i32, i8*, i8*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @nvme_sysctl_initialize_queue(i32*, %struct.sysctl_ctx_list*, %struct.sysctl_oid*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
