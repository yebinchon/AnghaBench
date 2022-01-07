; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/http/extr_http.c_http_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/http/extr_http.c_http_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.http_worker_description = type { i32, i32 }

@threaded = common dso_local global i64 0, align 8
@statep = common dso_local global %struct.TYPE_2__* null, align 8
@PTHREAD_BARRIER_SERIAL_THREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"pthread_barrier_wait\00", align 1
@QUIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @http_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @http_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.http_worker_description*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* @threaded, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @statep, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = call i32 @pthread_barrier_wait(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PTHREAD_BARRIER_SERIAL_THREAD, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @err(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13, %7
  br label %22

20:                                               ; preds = %1
  %21 = call i32 (...) @signal_barrier_wait()
  br label %22

22:                                               ; preds = %20, %19
  %23 = load i8*, i8** %2, align 8
  %24 = bitcast i8* %23 to %struct.http_worker_description*
  store %struct.http_worker_description* %24, %struct.http_worker_description** %3, align 8
  br label %25

25:                                               ; preds = %55, %40, %22
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @statep, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @statep, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @statep, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @QUIET, align 4
  %38 = call i64 @http_fetch(i32* %33, i32 %36, i32 %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.http_worker_description*, %struct.http_worker_description** %3, align 8
  %42 = getelementptr inbounds %struct.http_worker_description, %struct.http_worker_description* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %25

45:                                               ; preds = %31
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @statep, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.http_worker_description*, %struct.http_worker_description** %3, align 8
  %52 = getelementptr inbounds %struct.http_worker_description, %struct.http_worker_description* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %45
  br label %25

56:                                               ; preds = %25
  %57 = load i64, i64* @threaded, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  ret i8* null

60:                                               ; preds = %56
  %61 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @pthread_barrier_wait(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @signal_barrier_wait(...) #1

declare dso_local i64 @http_fetch(i32*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
