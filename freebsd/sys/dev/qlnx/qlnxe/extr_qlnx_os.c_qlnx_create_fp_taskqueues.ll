; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_create_fp_taskqueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_create_fp_taskqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.qlnx_fastpath* }
%struct.qlnx_fastpath = type { i32*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"ql_fp_tq_%d\00", align 1
@qlnx_fp_taskqueue = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @qlnx_create_fp_taskqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_create_fp_taskqueues(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i32], align 16
  %6 = alloca %struct.qlnx_fastpath*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %54, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %16, i64 %18
  store %struct.qlnx_fastpath* %19, %struct.qlnx_fastpath** %6, align 8
  %20 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %21 = call i32 @bzero(i32* %20, i32 128)
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @snprintf(i32* %22, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %26 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %25, i32 0, i32 1
  %27 = load i32, i32* @qlnx_fp_taskqueue, align 4
  %28 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %29 = call i32 @TASK_INIT(i32* %26, i32 0, i32 %27, %struct.qlnx_fastpath* %28)
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %31 = load i32, i32* @M_NOWAIT, align 4
  %32 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %33 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %34 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %33, i32 0, i32 0
  %35 = call i32* @taskqueue_create(i32* %30, i32 %31, i32 %32, i32** %34)
  %36 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %37 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %39 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %58

43:                                               ; preds = %13
  %44 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %45 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %44, i32 0, i32 0
  %46 = load i32, i32* @PI_NET, align 4
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %48 = call i32 @taskqueue_start_threads(i32** %45, i32 1, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %51 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @QL_DPRINT1(%struct.TYPE_4__* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %52)
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %7

57:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.qlnx_fastpath*) #1

declare dso_local i32* @taskqueue_create(i32*, i32, i32, i32**) #1

declare dso_local i32 @taskqueue_start_threads(i32**, i32, i32, i8*, i32*) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_4__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
