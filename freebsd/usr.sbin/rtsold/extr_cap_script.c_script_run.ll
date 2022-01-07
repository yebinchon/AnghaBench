; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_cap_script.c_script_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_cap_script.c_script_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @script_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_run(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %8 = call i64 @pipe(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = call i64 (...) @fork()
  store i64 %12, i64* %4, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %52

15:                                               ; preds = %11
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @close(i32 %20)
  %22 = load i32, i32* @O_RDWR, align 4
  %23 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 @_exit(i32 1) #3
  unreachable

28:                                               ; preds = %18
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @STDIN_FILENO, align 8
  %32 = call i64 @dup2(i32 %30, i64 %31)
  %33 = load i64, i64* @STDIN_FILENO, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 @_exit(i32 1) #3
  unreachable

37:                                               ; preds = %28
  %38 = call i32 @closefrom(i32 3)
  %39 = load i8**, i8*** %3, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8**, i8*** %3, align 8
  %43 = call i32 @execve(i8* %41, i8** %42, i32* null)
  %44 = call i32 @_exit(i32 1) #3
  unreachable

45:                                               ; preds = %15
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @close(i32 %47)
  br label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %14, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @open(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @dup2(i32, i64) #1

declare dso_local i32 @closefrom(i32) #1

declare dso_local i32 @execve(i8*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
