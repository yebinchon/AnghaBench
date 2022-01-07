; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_pipe_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_pipe_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigevent = type { i32 }
%struct.aio_context = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"aio\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"pipe failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@PIPE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sigevent*)* @aio_pipe_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_pipe_test(i32 %0, %struct.sigevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigevent*, align 8
  %5 = alloca %struct.aio_context, align 4
  %6 = alloca [2 x i32], align 4
  store i32 %0, i32* %3, align 4
  store %struct.sigevent* %1, %struct.sigevent** %4, align 8
  %7 = call i32 @ATF_REQUIRE_KERNEL_MODULE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (...) @ATF_REQUIRE_UNSAFE_AIO()
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %10 = call i32 @pipe(i32* %9)
  %11 = icmp ne i32 %10, -1
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 @ATF_REQUIRE_MSG(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PIPE_LEN, align 4
  %21 = call i32 @aio_context_init(%struct.aio_context* %5, i32 %17, i32 %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %24 = call i32 @aio_write_test(%struct.aio_context* %5, i32 %22, %struct.sigevent* %23)
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %27 = call i32 @aio_read_test(%struct.aio_context* %5, i32 %25, %struct.sigevent* %26)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @close(i32 %29)
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @close(i32 %32)
  ret void
}

declare dso_local i32 @ATF_REQUIRE_KERNEL_MODULE(i8*) #1

declare dso_local i32 @ATF_REQUIRE_UNSAFE_AIO(...) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @aio_context_init(%struct.aio_context*, i32, i32, i32) #1

declare dso_local i32 @aio_write_test(%struct.aio_context*, i32, %struct.sigevent*) #1

declare dso_local i32 @aio_read_test(%struct.aio_context*, i32, %struct.sigevent*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
