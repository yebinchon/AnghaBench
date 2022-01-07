; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_seqpacket_test.c_test_eagain.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_seqpacket_test.c_test_eagain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"send returned < 0 but not EAGAIN\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Never got EAGAIN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_eagain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_eagain(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  %16 = mul nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @MIN(i32 %18, i32 %19)
  %21 = sdiv i32 %20, 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = udiv i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %31 = call i32 @do_socketpair_nonblocking(i32* %30)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SOL_SOCKET, align 4
  %35 = load i32, i32* @SO_SNDBUF, align 4
  %36 = call i32 @setsockopt(i32 %33, i32 %34, i32 %35, i32* %3, i32 4)
  %37 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %36)
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SOL_SOCKET, align 4
  %41 = load i32, i32* @SO_RCVBUF, align 4
  %42 = call i32 @setsockopt(i32 %39, i32 %40, i32 %41, i32* %4, i32 4)
  %43 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %42)
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @bzero(i8* %29, i64 %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %75, %2
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* @MSG_EOR, align 4
  %55 = call i32 @send(i32 %52, i8* %29, i64 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %74

58:                                               ; preds = %50
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @EAGAIN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @close(i32 %64)
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @close(i32 %67)
  %69 = call i32 (...) @atf_tc_pass()
  br label %73

70:                                               ; preds = %58
  %71 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %72 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %62
  br label %74

74:                                               ; preds = %73, %50
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %46

78:                                               ; preds = %46
  %79 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %80)
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @do_socketpair_nonblocking(i32*) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @send(i32, i8*, i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @atf_tc_pass(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
