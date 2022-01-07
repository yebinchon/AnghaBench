; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_pty_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_aio_test.c_aio_pty_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigevent = type { i32 }
%struct.aio_context = type { i32 }
%struct.termios = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"aio\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"openpty failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"tcgetattr failed: %s\00", align 1
@TCSANOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"tcsetattr failed: %s\00", align 1
@PTY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sigevent*)* @aio_pty_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_pty_test(i32 %0, %struct.sigevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigevent*, align 8
  %5 = alloca %struct.aio_context, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.termios, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sigevent* %1, %struct.sigevent** %4, align 8
  %10 = call i32 @ATF_REQUIRE_KERNEL_MODULE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 (...) @ATF_REQUIRE_UNSAFE_AIO()
  %12 = call i64 @openpty(i32* %6, i32* %7, i32* null, i32* null, i32* null)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 @ATF_REQUIRE_MSG(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @tcgetattr(i32 %18, %struct.termios* %8)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* @errno, align 4
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %2
  %28 = call i32 @cfmakeraw(%struct.termios* %8)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @TCSANOW, align 4
  %31 = call i64 @tcsetattr(i32 %29, i32 %30, %struct.termios* %8)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* @errno, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PTY_LEN, align 4
  %43 = call i32 @aio_context_init(%struct.aio_context* %5, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %46 = call i32 @aio_write_test(%struct.aio_context* %5, i32 %44, %struct.sigevent* %45)
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %49 = call i32 @aio_read_test(%struct.aio_context* %5, i32 %47, %struct.sigevent* %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @close(i32 %52)
  ret void
}

declare dso_local i32 @ATF_REQUIRE_KERNEL_MODULE(i8*) #1

declare dso_local i32 @ATF_REQUIRE_UNSAFE_AIO(...) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i64 @openpty(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @atf_tc_fail(i8*, i32) #1

declare dso_local i32 @cfmakeraw(%struct.termios*) #1

declare dso_local i64 @tcsetattr(i32, i32, %struct.termios*) #1

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
