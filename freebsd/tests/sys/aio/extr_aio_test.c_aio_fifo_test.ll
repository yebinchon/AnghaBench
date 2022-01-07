; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_fifo_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_fifo_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigevent = type { i32 }
%struct.aio_context = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"aio\00", align 1
@FIFO_PATHNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"mkfifo failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"read_fd open failed: %s\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"write_fd open failed: %s\00", align 1
@FIFO_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sigevent*)* @aio_fifo_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_fifo_test(i32 %0, %struct.sigevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigevent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aio_context, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sigevent* %1, %struct.sigevent** %4, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %9 = call i32 @ATF_REQUIRE_KERNEL_MODULE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @ATF_REQUIRE_UNSAFE_AIO()
  %11 = load i32, i32* @FIFO_PATHNAME, align 4
  %12 = call i32 @mkfifo(i32 %11, i32 384)
  %13 = icmp ne i32 %12, -1
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 @ATF_REQUIRE_MSG(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @FIFO_PATHNAME, align 4
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = load i32, i32* @O_NONBLOCK, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @open(i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* @errno, align 4
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %2
  %32 = load i32, i32* @FIFO_PATHNAME, align 4
  %33 = load i32, i32* @O_WRONLY, align 4
  %34 = call i32 @open(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* @errno, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* @errno, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @FIFO_LEN, align 4
  %47 = call i32 @aio_context_init(%struct.aio_context* %8, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %50 = call i32 @aio_write_test(%struct.aio_context* %8, i32 %48, %struct.sigevent* %49)
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %53 = call i32 @aio_read_test(%struct.aio_context* %8, i32 %51, %struct.sigevent* %52)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @close(i32 %56)
  ret void
}

declare dso_local i32 @ATF_REQUIRE_KERNEL_MODULE(i8*) #1

declare dso_local i32 @ATF_REQUIRE_UNSAFE_AIO(...) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i32 @mkfifo(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @atf_tc_fail(i8*, i32) #1

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
