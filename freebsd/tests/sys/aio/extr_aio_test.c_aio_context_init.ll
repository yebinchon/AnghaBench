; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_context_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_context = type { i32, i32, i32, i32, i32 }

@BUFFER_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"aio_context_init: buffer too large (%d > %d)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"aio_test_buffer: internal error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aio_context*, i32, i32, i32)* @aio_context_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_context_init(%struct.aio_context* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.aio_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aio_context* %0, %struct.aio_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BUFFER_MAX, align 4
  %11 = icmp sle i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @BUFFER_MAX, align 4
  %15 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.aio_context*, %struct.aio_context** %5, align 8
  %17 = call i32 @bzero(%struct.aio_context* %16, i32 20)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.aio_context*, %struct.aio_context** %5, align 8
  %20 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.aio_context*, %struct.aio_context** %5, align 8
  %23 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.aio_context*, %struct.aio_context** %5, align 8
  %26 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = call i32 (...) @srandomdev()
  %28 = call i32 (...) @random()
  %29 = load %struct.aio_context*, %struct.aio_context** %5, align 8
  %30 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.aio_context*, %struct.aio_context** %5, align 8
  %32 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.aio_context*, %struct.aio_context** %5, align 8
  %36 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @aio_fill_buffer(i32 %33, i32 %34, i32 %37)
  %39 = load %struct.aio_context*, %struct.aio_context** %5, align 8
  %40 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.aio_context*, %struct.aio_context** %5, align 8
  %44 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @aio_test_buffer(i32 %41, i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, ...) #1

declare dso_local i32 @bzero(%struct.aio_context*, i32) #1

declare dso_local i32 @srandomdev(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @aio_fill_buffer(i32, i32, i32) #1

declare dso_local i64 @aio_test_buffer(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
