; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_btpand.c_main_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_btpand.c_main_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGUSR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not signal main process: %m\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"setsid() failed\00", align 1
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Could not open %s\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @main_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_detach() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @getppid()
  %3 = load i32, i32* @SIGUSR1, align 4
  %4 = call i32 @kill(i32 %2, i32 %3)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i32 (...) @setsid()
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32, i32* @_PATH_DEVNULL, align 4
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = call i32 @open(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @_PATH_DEVNULL, align 4
  %21 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  br label %34

22:                                               ; preds = %13
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @STDIN_FILENO, align 4
  %25 = call i32 @dup2(i32 %23, i32 %24)
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @STDOUT_FILENO, align 4
  %28 = call i32 @dup2(i32 %26, i32 %27)
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @STDERR_FILENO, align 4
  %31 = call i32 @dup2(i32 %29, i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @close(i32 %32)
  br label %34

34:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
