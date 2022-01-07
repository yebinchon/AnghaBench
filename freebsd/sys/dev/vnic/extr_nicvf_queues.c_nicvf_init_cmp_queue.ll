; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_init_cmp_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_init_cmp_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { double, i32 }
%struct.cmp_queue = type { i32, i32, i32, i32, i32, %struct.nicvf*, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s: CQ(%d) lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@CMP_QUEUE_DESC_SIZE = common dso_local global i32 0, align 4
@NICVF_CQ_BASE_ALIGN_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Could not allocate DMA memory for CQ\0A\00", align 1
@CMP_QUEUE_CQE_THRESH = common dso_local global i32 0, align 4
@CMP_QUEUE_TIMER_THRESH = common dso_local global double 0.000000e+00, align 8
@CMP_QUEUE_LEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@nicvf_cmp_task = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"nicvf_cmp_taskq\00", align 1
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%s: cmp_taskq(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*, %struct.cmp_queue*, i32, i32)* @nicvf_init_cmp_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_init_cmp_queue(%struct.nicvf* %0, %struct.cmp_queue* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nicvf*, align 8
  %7 = alloca %struct.cmp_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %6, align 8
  store %struct.cmp_queue* %1, %struct.cmp_queue** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %12 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %15 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @device_get_nameunit(i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @snprintf(i32 %13, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  %20 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %21 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %20, i32 0, i32 3
  %22 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %23 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MTX_DEF, align 4
  %26 = call i32 @mtx_init(i32* %21, i32 %24, i32* null, i32 %25)
  %27 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %28 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %29 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %28, i32 0, i32 7
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @CMP_QUEUE_DESC_SIZE, align 4
  %32 = load i32, i32* @NICVF_CQ_BASE_ALIGN_BYTES, align 4
  %33 = call i32 @nicvf_alloc_q_desc_mem(%struct.nicvf* %27, %struct.TYPE_2__* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %38 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %102

42:                                               ; preds = %4
  %43 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %44 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %48 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %50 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @pass1_silicon(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %57

55:                                               ; preds = %42
  %56 = load i32, i32* @CMP_QUEUE_CQE_THRESH, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ 0, %54 ], [ %56, %55 ]
  %59 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %60 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %62 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %63 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %62, i32 0, i32 5
  store %struct.nicvf* %61, %struct.nicvf** %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %66 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load double, double* @CMP_QUEUE_TIMER_THRESH, align 8
  %68 = fmul double %67, 5.000000e-02
  %69 = fsub double %68, 1.000000e+00
  %70 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %71 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %70, i32 0, i32 0
  store double %69, double* %71, align 8
  %72 = load i32, i32* @CMP_QUEUE_LEN, align 4
  %73 = mul nsw i32 %72, 8
  %74 = load i32, i32* @M_DEVBUF, align 4
  %75 = load i32, i32* @M_WAITOK, align 4
  %76 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %77 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %76, i32 0, i32 3
  %78 = call i32 @buf_ring_alloc(i32 %73, i32 %74, i32 %75, i32* %77)
  %79 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %80 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %82 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %81, i32 0, i32 2
  %83 = load i32, i32* @nicvf_cmp_task, align 4
  %84 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %85 = call i32 @TASK_INIT(i32* %82, i32 0, i32 %83, %struct.cmp_queue* %84)
  %86 = load i32, i32* @M_WAITOK, align 4
  %87 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %88 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %89 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %88, i32 0, i32 1
  %90 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87, i32* %89)
  %91 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %92 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.cmp_queue*, %struct.cmp_queue** %7, align 8
  %94 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %93, i32 0, i32 1
  %95 = load i32, i32* @PI_NET, align 4
  %96 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %97 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @device_get_nameunit(i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @taskqueue_start_threads(i32* %94, i32 1, i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %99, i32 %100)
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %57, %36
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @nicvf_alloc_q_desc_mem(%struct.nicvf*, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @pass1_silicon(i32) #1

declare dso_local i32 @buf_ring_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.cmp_queue*) #1

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
