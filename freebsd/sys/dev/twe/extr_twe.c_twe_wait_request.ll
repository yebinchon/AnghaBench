; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_wait_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_wait_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_request = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@TWE_CMD_SLEEPER = common dso_local global i32 0, align 4
@TWE_CMD_BUSY = common dso_local global i64 0, align 8
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"twewait\00", align 1
@TWE_CMD_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twe_request*)* @twe_wait_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_wait_request(%struct.twe_request* %0) #0 {
  %2 = alloca %struct.twe_request*, align 8
  store %struct.twe_request* %0, %struct.twe_request** %2, align 8
  %3 = call i32 @debug_called(i32 4)
  %4 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %5 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = call i32 @TWE_IO_ASSERT_LOCKED(%struct.TYPE_3__* %6)
  %8 = load i32, i32* @TWE_CMD_SLEEPER, align 4
  %9 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %10 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load i64, i64* @TWE_CMD_BUSY, align 8
  %14 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %15 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %17 = call i32 @twe_enqueue_ready(%struct.twe_request* %16)
  %18 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %19 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @twe_startio(%struct.TYPE_3__* %20)
  br label %22

22:                                               ; preds = %28, %1
  %23 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %24 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TWE_CMD_BUSY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %30 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %31 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* @PRIBIO, align 4
  %35 = call i32 @mtx_sleep(%struct.twe_request* %29, i32* %33, i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %22

36:                                               ; preds = %22
  %37 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %38 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TWE_CMD_COMPLETE, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_IO_ASSERT_LOCKED(%struct.TYPE_3__*) #1

declare dso_local i32 @twe_enqueue_ready(%struct.twe_request*) #1

declare dso_local i32 @twe_startio(%struct.TYPE_3__*) #1

declare dso_local i32 @mtx_sleep(%struct.twe_request*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
