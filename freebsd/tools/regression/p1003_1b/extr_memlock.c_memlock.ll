; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/p1003_1b/extr_memlock.c_memlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/p1003_1b/extr_memlock.c_memlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@_SC_MEMLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"(should not happen) sysconf(_SC_MEMLOCK)\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Memory locking is not supported in this environment.\0A\00", align 1
@MCL_CURRENT = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"mlockall(MCL_CURRENT | MCL_FUTURE)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"munlockall\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memlock(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* @errno, align 4
  %6 = load i32, i32* @_SC_MEMLOCK, align 4
  %7 = call i32 @sysconf(i32 %6)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* @errno, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @quit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %17

14:                                               ; preds = %9
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %12
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i32, i32* @MCL_CURRENT, align 4
  %20 = load i32, i32* @MCL_FUTURE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @mlockall(i32 %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = call i32 @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %5, align 4
  br label %34

27:                                               ; preds = %18
  %28 = call i32 (...) @munlockall()
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @errno, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @quit(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @mlockall(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @munlockall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
