; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_unsol_rq_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_unsol_rq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@OCS_MAX_FRAMES_BEFORE_YEILDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s running\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s exiting\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_unsol_rq_thread(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load i64, i64* @OCS_MAX_FRAMES_BEFORE_YEILDING, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ocs_log_debug(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %53, %31, %1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = call i32 @ocs_thread_terminate_requested(%struct.TYPE_11__* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_12__* @ocs_cbuf_get(i32 %27, i32 100000)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %5, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = icmp eq %struct.TYPE_12__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = call i32 @ocs_thread_yield(i32* %33)
  %35 = load i64, i64* @OCS_MAX_FRAMES_BEFORE_YEILDING, align 8
  store i64 %35, i64* %6, align 8
  br label %19

36:                                               ; preds = %24
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = call i32 @ocs_unsol_process(i32* %42, %struct.TYPE_12__* %43)
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %6, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = call i32 @ocs_thread_yield(i32* %50)
  %52 = load i64, i64* @OCS_MAX_FRAMES_BEFORE_YEILDING, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %48, %36
  br label %19

54:                                               ; preds = %19
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ocs_log_debug(i32* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @FALSE, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  ret i32 0
}

declare dso_local i32 @ocs_log_debug(i32*, i8*, i32) #1

declare dso_local i32 @ocs_thread_terminate_requested(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @ocs_cbuf_get(i32, i32) #1

declare dso_local i32 @ocs_thread_yield(i32*) #1

declare dso_local i32 @ocs_unsol_process(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
