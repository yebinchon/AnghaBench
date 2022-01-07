; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_lesser_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_lesser_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"dup2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"close\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lesser_daemon() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @log_warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, i32* @_PATH_DEVNULL, align 4
  %10 = load i32, i32* @O_RDWR, align 4
  %11 = call i32 @open(i32 %9, i32 %10, i32 0)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @_PATH_DEVNULL, align 4
  %16 = call i32 (i8*, ...) @log_warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  br label %32

17:                                               ; preds = %8
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @STDIN_FILENO, align 4
  %20 = call i32 @dup2(i32 %18, i32 %19)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 (i8*, ...) @log_warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @close(i32 %26)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @log_warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %32

32:                                               ; preds = %14, %30, %25
  ret void
}

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @log_warn(i8*, ...) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
