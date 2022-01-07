; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i32, i32 }
%struct.make_dev_args = type { i32, i8*, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"nvme ctrlr lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@NVME_DEFAULT_TIMEOUT_PERIOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"hw.nvme.timeout_period\00", align 1
@NVME_MAX_TIMEOUT_PERIOD = common dso_local global i32 0, align 4
@NVME_MIN_TIMEOUT_PERIOD = common dso_local global i32 0, align 4
@NVME_DEFAULT_RETRY_COUNT = common dso_local global i32 0, align 4
@nvme_retry_count = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"hw.nvme.retry_count\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"hw.nvme.enable_aborts\00", align 1
@NVME_MAX_XFER_SIZE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"nvme_taskq\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_DISK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"nvme taskq\00", align 1
@nvme_ctrlr_reset_task = common dso_local global i32 0, align 4
@nvme_ctrlr_fail_req_task = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@nvme_ctrlr_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"nvme%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_ctrlr_construct(%struct.nvme_controller* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.make_dev_args, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %15 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %14, i32 0, i32 17
  store i32 %13, i32* %15, align 4
  %16 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %16, i32 0, i32 16
  %18 = load i32, i32* @MTX_DEF, align 4
  %19 = call i32 @mtx_init(i32* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %21, i32 0, i32 15
  %23 = call i64 @bus_get_domain(i32 %20, i64* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %27 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %26, i32 0, i32 15
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @nvme_mmio_read_4(%struct.nvme_controller* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @NVME_CAP_HI_DSTRD(i32 %32)
  %34 = add nsw i64 %33, 2
  %35 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %36 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %35, i32 0, i32 14
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @NVME_CAP_HI_MPSMIN(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 12, %39
  %41 = shl i32 1, %40
  %42 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %43 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @nvme_mmio_read_4(%struct.nvme_controller* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @NVME_CAP_LO_TO(i32 %47)
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %50, 500
  %52 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %53 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @NVME_DEFAULT_TIMEOUT_PERIOD, align 4
  store i32 %54, i32* %12, align 4
  %55 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @NVME_MAX_TIMEOUT_PERIOD, align 4
  %58 = call i32 @min(i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @NVME_MIN_TIMEOUT_PERIOD, align 4
  %61 = call i32 @max(i32 %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %64 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @NVME_DEFAULT_RETRY_COUNT, align 4
  store i32 %65, i32* @nvme_retry_count, align 4
  %66 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* @nvme_retry_count)
  %67 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %68 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %67, i32 0, i32 3
  store i32 0, i32* %68, align 4
  %69 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %70 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %69, i32 0, i32 3
  %71 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %70)
  %72 = load i32, i32* @NVME_MAX_XFER_SIZE, align 4
  %73 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %74 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %73, i32 0, i32 13
  store i32 %72, i32* %74, align 4
  %75 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %76 = call i64 @nvme_ctrlr_construct_admin_qpair(%struct.nvme_controller* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %28
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %3, align 4
  br label %137

80:                                               ; preds = %28
  %81 = load i32, i32* @M_WAITOK, align 4
  %82 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %83 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %84 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %83, i32 0, i32 12
  %85 = call i32 @taskqueue_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %82, i32* %84)
  %86 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %87 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %86, i32 0, i32 12
  store i32 %85, i32* %87, align 8
  %88 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %89 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %88, i32 0, i32 12
  %90 = load i32, i32* @PI_DISK, align 4
  %91 = call i32 @taskqueue_start_threads(i32* %89, i32 1, i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %92 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %93 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %92, i32 0, i32 11
  store i64 0, i64* %93, align 8
  %94 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %95 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %94, i32 0, i32 10
  store i64 0, i64* %95, align 8
  %96 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %97 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %96, i32 0, i32 9
  store i64 0, i64* %97, align 8
  %98 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %99 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %98, i32 0, i32 8
  %100 = load i32, i32* @nvme_ctrlr_reset_task, align 4
  %101 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %102 = call i32 @TASK_INIT(i32* %99, i32 0, i32 %100, %struct.nvme_controller* %101)
  %103 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %104 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %103, i32 0, i32 7
  %105 = load i32, i32* @nvme_ctrlr_fail_req_task, align 4
  %106 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %107 = call i32 @TASK_INIT(i32* %104, i32 0, i32 %105, %struct.nvme_controller* %106)
  %108 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %109 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %108, i32 0, i32 6
  %110 = call i32 @STAILQ_INIT(i32* %109)
  %111 = load i32, i32* @FALSE, align 4
  %112 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %113 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 4
  %114 = call i32 @make_dev_args_init(%struct.make_dev_args* %6)
  %115 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %6, i32 0, i32 5
  store i32* @nvme_ctrlr_cdevsw, i32** %115, align 8
  %116 = load i32, i32* @UID_ROOT, align 4
  %117 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %6, i32 0, i32 4
  store i32 %116, i32* %117, align 8
  %118 = load i32, i32* @GID_WHEEL, align 4
  %119 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %6, i32 0, i32 3
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %6, i32 0, i32 0
  store i32 384, i32* %120, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @device_get_unit(i32 %121)
  %123 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %6, i32 0, i32 2
  store i32 %122, i32* %123, align 8
  %124 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %125 = bitcast %struct.nvme_controller* %124 to i8*
  %126 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %6, i32 0, i32 1
  store i8* %125, i8** %126, align 8
  %127 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %128 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %127, i32 0, i32 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @device_get_unit(i32 %129)
  %131 = call i32 @make_dev_s(%struct.make_dev_args* %6, i32* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %80
  %135 = load i32, i32* @ENXIO, align 4
  store i32 %135, i32* %3, align 4
  br label %137

136:                                              ; preds = %80
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %134, %78
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @bus_get_domain(i32, i64*) #1

declare dso_local i32 @nvme_mmio_read_4(%struct.nvme_controller*, i32) #1

declare dso_local i64 @NVME_CAP_HI_DSTRD(i32) #1

declare dso_local i32 @NVME_CAP_HI_MPSMIN(i32) #1

declare dso_local i32 @NVME_CAP_LO_TO(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @nvme_ctrlr_construct_admin_qpair(%struct.nvme_controller*) #1

declare dso_local i32 @taskqueue_create(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.nvme_controller*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @make_dev_s(%struct.make_dev_args*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
