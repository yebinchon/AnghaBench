; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_create_error_recovery_taskqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_create_error_recovery_taskqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"ql_err_tq\00", align 1
@qlnx_error_recovery_taskqueue = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @qlnx_create_error_recovery_taskqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_create_error_recovery_taskqueue(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [32 x i32], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %6 = call i32 @bzero(i32* %5, i32 128)
  %7 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %8 = call i32 @snprintf(i32* %7, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* @qlnx_error_recovery_taskqueue, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = call i32 @TASK_INIT(i32* %10, i32 0, i32 %11, %struct.TYPE_5__* %12)
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32* @taskqueue_create(i32* %14, i32 %15, i32 %16, i32** %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %38

27:                                               ; preds = %1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* @PI_NET, align 4
  %31 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %32 = call i32 @taskqueue_start_threads(i32** %29, i32 1, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @QL_DPRINT1(%struct.TYPE_5__* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %27, %26
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32* @taskqueue_create(i32*, i32, i32, i32**) #1

declare dso_local i32 @taskqueue_start_threads(i32**, i32, i32, i8*, i32*) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_5__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
