; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/vm/extr_mlock_test.c_test_wired_copy_on_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/vm/extr_mlock_test.c_test_wired_copy_on_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"fork() failed: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@PT_TRACE_ME = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"child exited with status %d\00", align 1
@PT_READ_D = common dso_local global i32 0, align 4
@PT_WRITE_D = common dso_local global i32 0, align 4
@PT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @test_wired_copy_on_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wired_copy_on_write(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i32 (...) @fork()
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* @errno, align 8
  %13 = call i32 @strerror(i64 %12)
  %14 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @mlock(i8* %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @_exit(i32 1) #3
  unreachable

25:                                               ; preds = %18
  %26 = load i32, i32* @PT_TRACE_ME, align 4
  %27 = call i32 @ptrace(i32 %26, i32 0, i8* null, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @_exit(i32 2) #3
  unreachable

31:                                               ; preds = %25
  %32 = load i64, i64* @SIGSTOP, align 8
  %33 = call i64 @raise(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @_exit(i32 3) #3
  unreachable

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @munlock(i8* %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @_exit(i32 4) #3
  unreachable

44:                                               ; preds = %37
  %45 = call i32 @_exit(i32 0) #3
  unreachable

46:                                               ; preds = %15
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @waitpid(i32 %47, i32* %5, i32 0)
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ATF_REQUIRE(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @WIFEXITED(i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @WEXITSTATUS(i32 %58)
  %60 = call i32 @ATF_REQUIRE_MSG(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @WIFSTOPPED(i32 %61)
  %63 = call i32 @ATF_REQUIRE(i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @WSTOPSIG(i32 %64)
  %66 = load i64, i64* @SIGSTOP, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ATF_REQUIRE(i32 %68)
  store i64 0, i64* @errno, align 8
  %70 = load i32, i32* @PT_READ_D, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 @ptrace(i32 %70, i32 %71, i8* %72, i32 0)
  store i32 %73, i32* %6, align 4
  %74 = load i64, i64* @errno, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @ATF_REQUIRE(i32 %76)
  %78 = load i32, i32* @PT_WRITE_D, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i8*, i8** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @ptrace(i32 %78, i32 %79, i8* %80, i32 %81)
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @ATF_REQUIRE(i32 %84)
  %86 = load i32, i32* @PT_CONTINUE, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @ptrace(i32 %86, i32 %87, i8* inttoptr (i64 1 to i8*), i32 0)
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @ATF_REQUIRE(i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @waitpid(i32 %92, i32* %5, i32 0)
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @ATF_REQUIRE(i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @WIFEXITED(i32 %98)
  %100 = call i32 @ATF_REQUIRE(i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = call i64 @WEXITSTATUS(i32 %101)
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %5, align 4
  %106 = call i64 @WSTOPSIG(i32 %105)
  %107 = call i32 @ATF_REQUIRE_MSG(i32 %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %106)
  ret void
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @atf_tc_fail(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @mlock(i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @ptrace(i32, i32, i8*, i32) #1

declare dso_local i64 @raise(i64) #1

declare dso_local i64 @munlock(i8*, i64) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i64) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i64 @WSTOPSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
