; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_create_pf_taskqueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_create_pf_taskqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { i32, %struct.ecore_hwfn* }
%struct.ecore_hwfn = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ql_pf_tq_%d\00", align 1
@qlnx_pf_taskqueue = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @qlnx_create_pf_taskqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_create_pf_taskqueues(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i32], align 16
  %6 = alloca %struct.ecore_hwfn*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %86, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %89

14:                                               ; preds = %7
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i64 %20
  store %struct.ecore_hwfn* %21, %struct.ecore_hwfn** %6, align 8
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %23 = call i32 @bzero(i32* %22, i32 128)
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @snprintf(i32* %24, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* @qlnx_pf_taskqueue, align 4
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %36 = call i32 @TASK_INIT(i32* %33, i32 0, i32 %34, %struct.ecore_hwfn* %35)
  %37 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = call i32* @taskqueue_create(i32* %37, i32 %38, i32 %39, i32** %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32* %47, i32** %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %90

65:                                               ; preds = %14
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* @PI_NET, align 4
  %74 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %75 = call i32 @taskqueue_start_threads(i32** %72, i32 1, i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @QL_DPRINT1(%struct.TYPE_8__* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %84)
  br label %86

86:                                               ; preds = %65
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %7

89:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %64
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.ecore_hwfn*) #1

declare dso_local i32* @taskqueue_create(i32*, i32, i32, i32**) #1

declare dso_local i32 @taskqueue_start_threads(i32**, i32, i32, i8*, i32*) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_8__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
