; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_os.c_ocs_thread_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_os.c_ocs_thread_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@ocs_thread_call_fctn = common dso_local global i32 0, align 4
@OCS_THREAD_CREATE = common dso_local global i64 0, align 8
@RFSTOPPED = common dso_local global i32 0, align 4
@OCS_THREAD_DEFAULT_STACK_SIZE_PAGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_thread_create(i32 %0, %struct.TYPE_5__* %1, i32 %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = call i32 @ocs_memset(%struct.TYPE_5__* %14, i32 0, i32 32)
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i8* @ocs_strdup(i8* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  br label %30

30:                                               ; preds = %27, %6
  %31 = load i8*, i8** %11, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = call i32 @ocs_atomic_set(i32* %35, i32 0)
  %37 = load i32, i32* @ocs_thread_call_fctn, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @OCS_THREAD_CREATE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* @RFSTOPPED, align 4
  br label %47

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = load i32, i32* @OCS_THREAD_DEFAULT_STACK_SIZE_PAGES, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @kthread_add(i32 %37, %struct.TYPE_5__* %38, i32* null, i32* %40, i32 %48, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  ret i32 %52
}

declare dso_local i32 @ocs_memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @ocs_strdup(i8*) #1

declare dso_local i32 @ocs_atomic_set(i32*, i32) #1

declare dso_local i32 @kthread_add(i32, %struct.TYPE_5__*, i32*, i32*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
