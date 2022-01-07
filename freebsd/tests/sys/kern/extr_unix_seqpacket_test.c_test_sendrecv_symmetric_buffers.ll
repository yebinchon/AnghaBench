; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_seqpacket_test.c_test_sendrecv_symmetric_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_seqpacket_test.c_test_sendrecv_symmetric_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"send returned < 0\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"expected %zd=send(...) but got %zd\00", align 1
@MSG_WAITALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"recv returned < 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_sendrecv_symmetric_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sendrecv_symmetric_buffers(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sdiv i32 %13, 2
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %26 = call i32 @do_socketpair(i32* %25)
  br label %30

27:                                               ; preds = %2
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %29 = call i32 @do_socketpair_nonblocking(i32* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SOL_SOCKET, align 4
  %34 = load i32, i32* @SO_SNDBUF, align 4
  %35 = call i32 @setsockopt(i32 %32, i32 %33, i32 %34, i32* %3, i32 4)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %36)
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SOL_SOCKET, align 4
  %41 = load i32, i32* @SO_RCVBUF, align 4
  %42 = call i32 @setsockopt(i32 %39, i32 %40, i32 %41, i32* %3, i32 4)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @bzero(i8* %18, i32 %45)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MSG_EOR, align 4
  %51 = call i32 @send(i32 %48, i8* %18, i32 %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %30
  %55 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %56 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %30
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @ATF_CHECK_EQ_MSG(i32 %58, i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61)
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @MSG_WAITALL, align 4
  %67 = call i32 @recv(i32 %64, i8* %21, i32 %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %72 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %57
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @ATF_CHECK_EQ_MSG(i32 %74, i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @close(i32 %80)
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @close(i32 %83)
  %85 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %85)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @do_socketpair(i32*) #2

declare dso_local i32 @do_socketpair_nonblocking(i32*) #2

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @send(i32, i8*, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @atf_tc_fail(i8*) #2

declare dso_local i32 @ATF_CHECK_EQ_MSG(i32, i32, i8*, i32, i32) #2

declare dso_local i32 @recv(i32, i8*, i32, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
