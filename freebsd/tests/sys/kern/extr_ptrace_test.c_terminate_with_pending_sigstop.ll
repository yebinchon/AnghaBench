; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_ptrace_test.c_terminate_with_pending_sigstop.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_ptrace_test.c_terminate_with_pending_sigstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P_PID = common dso_local global i32 0, align 4
@PROC_REAP_ACQUIRE = common dso_local global i32 0, align 4
@CPU_LEVEL_CPUSET = common dso_local global i32 0, align 4
@CPU_WHICH_CPUSET = common dso_local global i32 0, align 4
@sleep_thread = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i64 0, align 8
@raise_sigstop_thread = common dso_local global i32 0, align 4
@PT_CONTINUE = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @terminate_with_pending_sigstop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate_with_pending_sigstop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @P_PID, align 4
  %11 = call i32 (...) @getpid()
  %12 = load i32, i32* @PROC_REAP_ACQUIRE, align 4
  %13 = call i64 @procctl(i32 %10, i32 %11, i32 %12, i32* null)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ATF_REQUIRE(i32 %15)
  %17 = call i64 (...) @fork()
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp sge i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ATF_REQUIRE(i32 %20)
  %22 = load i64, i64* %3, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %106

24:                                               ; preds = %1
  %25 = call i64 (...) @fork()
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp sge i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @CHILD_REQUIRE(i32 %28)
  %30 = load i64, i64* %3, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %24
  %33 = call i32 (...) @trace_me()
  %34 = call i32 @CPU_ZERO(i32* %7)
  %35 = call i32 @CPU_SET(i32 0, i32* %7)
  %36 = call i64 @cpuset(i32* %8)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @CHILD_REQUIRE(i32 %38)
  %40 = load i32, i32* @CPU_LEVEL_CPUSET, align 4
  %41 = load i32, i32* @CPU_WHICH_CPUSET, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @cpuset_setaffinity(i32 %40, i32 %41, i32 %42, i32 4, i32* %7)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @CHILD_REQUIRE(i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %32
  %50 = load i32, i32* @sleep_thread, align 4
  %51 = call i64 @pthread_create(i32* %9, i32* null, i32 %50, i32* null)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @CHILD_REQUIRE(i32 %53)
  %55 = load i64, i64* @SIGSTOP, align 8
  %56 = call i32 @raise(i64 %55)
  br label %64

57:                                               ; preds = %32
  %58 = load i32, i32* @raise_sigstop_thread, align 4
  %59 = call i64 @pthread_create(i32* %9, i32* null, i32 %58, i32* null)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @CHILD_REQUIRE(i32 %61)
  %63 = call i32 @sleep(i32 60)
  br label %64

64:                                               ; preds = %57, %49
  %65 = call i32 @exit(i32 0) #3
  unreachable

66:                                               ; preds = %24
  %67 = load i64, i64* %3, align 8
  %68 = call i64 @waitpid(i64 %67, i32* %5, i32 0)
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* %3, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @CHILD_REQUIRE(i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @WIFSTOPPED(i32 %74)
  %76 = call i32 @CHILD_REQUIRE(i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @WSTOPSIG(i32 %77)
  %79 = load i64, i64* @SIGSTOP, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @CHILD_REQUIRE(i32 %81)
  %83 = load i32, i32* @PT_CONTINUE, align 4
  %84 = load i64, i64* %3, align 8
  %85 = call i64 @ptrace(i32 %83, i64 %84, i32 1, i32 0)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @CHILD_REQUIRE(i32 %87)
  %89 = load i64, i64* %3, align 8
  %90 = call i64 @waitpid(i64 %89, i32* %5, i32 0)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* %3, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @CHILD_REQUIRE(i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @WIFSTOPPED(i32 %96)
  %98 = call i32 @CHILD_REQUIRE(i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = call i64 @WSTOPSIG(i32 %99)
  %101 = load i64, i64* @SIGSTOP, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @CHILD_REQUIRE(i32 %103)
  %105 = call i32 @exit(i32 0) #3
  unreachable

106:                                              ; preds = %1
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %141, %106
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %144

110:                                              ; preds = %107
  %111 = call i64 @wait(i32* %5)
  store i64 %111, i64* %4, align 8
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* %3, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load i32, i32* %5, align 4
  %117 = call i64 @WIFEXITED(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* %5, align 4
  %121 = call i64 @WEXITSTATUS(i32 %120)
  %122 = icmp eq i64 %121, 0
  br label %123

123:                                              ; preds = %119, %115
  %124 = phi i1 [ false, %115 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @ATF_REQUIRE(i32 %125)
  br label %140

127:                                              ; preds = %110
  %128 = load i32, i32* %5, align 4
  %129 = call i64 @WIFSIGNALED(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i32, i32* %5, align 4
  %133 = call i64 @WTERMSIG(i32 %132)
  %134 = load i64, i64* @SIGKILL, align 8
  %135 = icmp eq i64 %133, %134
  br label %136

136:                                              ; preds = %131, %127
  %137 = phi i1 [ false, %127 ], [ %135, %131 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @ATF_REQUIRE(i32 %138)
  br label %140

140:                                              ; preds = %136, %123
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %107

144:                                              ; preds = %107
  ret void
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @procctl(i32, i32, i32, i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @CHILD_REQUIRE(i32) #1

declare dso_local i32 @trace_me(...) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @cpuset(i32*) #1

declare dso_local i64 @cpuset_setaffinity(i32, i32, i32, i32, i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @raise(i64) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i64 @WSTOPSIG(i32) #1

declare dso_local i64 @ptrace(i32, i64, i32, i32) #1

declare dso_local i64 @wait(i32*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i64 @WTERMSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
