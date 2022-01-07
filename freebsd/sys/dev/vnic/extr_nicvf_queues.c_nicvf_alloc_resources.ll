; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, %struct.queue_set* }
%struct.queue_set = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32* }

@DMA_BUFFER_LEN = common dso_local global i32 0, align 4
@nicvf_qs_err_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"nicvf_qs_err_taskq\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s: qs_taskq\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*)* @nicvf_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_alloc_resources(%struct.nicvf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.queue_set*, align 8
  %5 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  %6 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %7 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %6, i32 0, i32 1
  %8 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  store %struct.queue_set* %8, %struct.queue_set** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %12 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %17 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %18 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %17, i32 0, i32 10
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %24 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DMA_BUFFER_LEN, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @nicvf_init_rbdr(%struct.nicvf* %16, i32* %22, i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %108

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %9

35:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %58, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %39 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %44 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %45 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %51 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @nicvf_init_snd_queue(%struct.nicvf* %43, i32* %49, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %108

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %36

61:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %84, %61
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %65 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %62
  %69 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %70 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %71 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %77 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @nicvf_init_cmp_queue(%struct.nicvf* %69, i32* %75, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %108

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %62

87:                                               ; preds = %62
  %88 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %89 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %88, i32 0, i32 4
  %90 = load i32, i32* @nicvf_qs_err_task, align 4
  %91 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %92 = call i32 @TASK_INIT(i32* %89, i32 0, i32 %90, %struct.nicvf* %91)
  %93 = load i32, i32* @M_WAITOK, align 4
  %94 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %95 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %96 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %95, i32 0, i32 3
  %97 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %94, i32* %96)
  %98 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %99 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %101 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %100, i32 0, i32 3
  %102 = load i32, i32* @PI_NET, align 4
  %103 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %104 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @device_get_nameunit(i32 %105)
  %107 = call i32 @taskqueue_start_threads(i32* %101, i32 1, i32 %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  store i32 0, i32* %2, align 4
  br label %112

108:                                              ; preds = %82, %56, %30
  %109 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %110 = call i32 @nicvf_free_resources(%struct.nicvf* %109)
  %111 = load i32, i32* @ENOMEM, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %87
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @nicvf_init_rbdr(%struct.nicvf*, i32*, i32, i32, i32) #1

declare dso_local i64 @nicvf_init_snd_queue(%struct.nicvf*, i32*, i32, i32) #1

declare dso_local i64 @nicvf_init_cmp_queue(%struct.nicvf*, i32*, i32, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.nicvf*) #1

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @nicvf_free_resources(%struct.nicvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
