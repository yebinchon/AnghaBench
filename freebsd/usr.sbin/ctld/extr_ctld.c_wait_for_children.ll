; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_wait_for_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_wait_for_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WNOHANG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"child process %d terminated with signal %d\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"child process %d terminated with exit status %d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"child process %d terminated gracefully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wait_for_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_children(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %43, %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i64 @wait4(i32 -1, i32* %4, i32 0, i32* null)
  store i64 %13, i64* %3, align 8
  br label %17

14:                                               ; preds = %9, %6
  %15 = load i32, i32* @WNOHANG, align 4
  %16 = call i64 @wait4(i32 -1, i32* %4, i32 %15, i32* null)
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %14, %12
  %18 = load i64, i64* %3, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %46

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @WIFSIGNALED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @WTERMSIG(i32 %27)
  %29 = call i32 @log_warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %28)
  br label %43

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @WEXITSTATUS(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @WEXITSTATUS(i32 %36)
  %38 = call i32 @log_warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %35, i64 %37)
  br label %42

39:                                               ; preds = %30
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @log_debugx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %6

46:                                               ; preds = %20
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @wait4(i32, i32*, i32, i32*) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @log_warnx(i8*, i64, i64) #1

declare dso_local i64 @WTERMSIG(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @log_debugx(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
