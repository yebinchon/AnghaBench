; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_response_manager.c_lio_setup_response_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_response_manager.c_lio_setup_response_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32, %struct.lio_tq, i32, %struct.TYPE_2__* }
%struct.lio_tq = type { i32, i32*, %struct.octeon_device* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@LIO_MAX_RESPONSE_LISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"response_list_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"cmd_resp_wqlock\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"lio_dma_comp\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to create wq thread\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lio_poll_req_completion = common dso_local global i32 0, align 4
@LIO_DRV_ONLINE = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"lio%d_dma_comp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_setup_response_list(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.lio_tq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @LIO_MAX_RESPONSE_LISTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  %12 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = call i32 @STAILQ_INIT(i32* %18)
  %20 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* @MTX_DEF, align 4
  %28 = call i32 @mtx_init(i32* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* null, i32 %27)
  %29 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @atomic_store_rel_int(i32* %35, i32 0)
  br label %37

37:                                               ; preds = %11
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %7

40:                                               ; preds = %7
  %41 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %41, i32 0, i32 3
  %43 = load i32, i32* @MTX_DEF, align 4
  %44 = call i32 @mtx_init(i32* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %43)
  %45 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %45, i32 0, i32 2
  store %struct.lio_tq* %46, %struct.lio_tq** %4, align 8
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %49 = load %struct.lio_tq*, %struct.lio_tq** %4, align 8
  %50 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %49, i32 0, i32 1
  %51 = call i32* @taskqueue_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48, i32** %50)
  %52 = load %struct.lio_tq*, %struct.lio_tq** %4, align 8
  %53 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.lio_tq*, %struct.lio_tq** %4, align 8
  %55 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %40
  %59 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %60 = call i32 @lio_dev_err(%struct.octeon_device* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %94

63:                                               ; preds = %40
  %64 = load %struct.lio_tq*, %struct.lio_tq** %4, align 8
  %65 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.lio_tq*, %struct.lio_tq** %4, align 8
  %68 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %67, i32 0, i32 0
  %69 = load i32, i32* @lio_poll_req_completion, align 4
  %70 = load %struct.lio_tq*, %struct.lio_tq** %4, align 8
  %71 = bitcast %struct.lio_tq* %70 to i8*
  %72 = call i32 @TIMEOUT_TASK_INIT(i32* %66, i32* %68, i32 0, i32 %69, i8* %71)
  %73 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %74 = load %struct.lio_tq*, %struct.lio_tq** %4, align 8
  %75 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %74, i32 0, i32 2
  store %struct.octeon_device* %73, %struct.octeon_device** %75, align 8
  %76 = load i32, i32* @LIO_DRV_ONLINE, align 4
  %77 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.lio_tq*, %struct.lio_tq** %4, align 8
  %80 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %79, i32 0, i32 1
  %81 = load i32, i32* @PI_NET, align 4
  %82 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %83 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @taskqueue_start_threads(i32** %80, i32 1, i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load %struct.lio_tq*, %struct.lio_tq** %4, align 8
  %87 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.lio_tq*, %struct.lio_tq** %4, align 8
  %90 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %89, i32 0, i32 0
  %91 = call i32 @lio_ms_to_ticks(i32 50)
  %92 = call i32 @taskqueue_enqueue_timeout(i32* %88, i32* %90, i32 %91)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %63, %58
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32* @taskqueue_create(i8*, i32, i32, i32**) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*) #1

declare dso_local i32 @TIMEOUT_TASK_INIT(i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @taskqueue_start_threads(i32**, i32, i32, i8*, i32) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32*, i32*, i32) #1

declare dso_local i32 @lio_ms_to_ticks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
