; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_set_signal_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_set_signal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32* }

@sig_handler = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_signal_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_signal_handler() #0 {
  %1 = alloca %struct.sigaction, align 8
  %2 = call i32 @memset(%struct.sigaction* %1, i32 0, i32 16)
  %3 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  store i32* @sig_handler, i32** %3, align 8
  %4 = load i32, i32* @SA_SIGINFO, align 4
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %4, i32* %5, align 8
  %6 = load i32, i32* @SIGTERM, align 4
  %7 = call i64 @sigaction(i32 %6, %struct.sigaction* %1, i32* null)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %59

11:                                               ; preds = %0
  %12 = load i32, i32* @SIGHUP, align 4
  %13 = call i64 @sigaction(i32 %12, %struct.sigaction* %1, i32* null)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %59

17:                                               ; preds = %11
  %18 = load i32, i32* @SIGINT, align 4
  %19 = call i64 @sigaction(i32 %18, %struct.sigaction* %1, i32* null)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %59

23:                                               ; preds = %17
  %24 = load i32, i32* @SIGQUIT, align 4
  %25 = call i64 @sigaction(i32 %24, %struct.sigaction* %1, i32* null)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %59

29:                                               ; preds = %23
  %30 = load i32, i32* @SIGABRT, align 4
  %31 = call i64 @sigaction(i32 %30, %struct.sigaction* %1, i32* null)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %59

35:                                               ; preds = %29
  %36 = load i32, i32* @SIGBUS, align 4
  %37 = call i64 @sigaction(i32 %36, %struct.sigaction* %1, i32* null)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %59

41:                                               ; preds = %35
  %42 = load i32, i32* @SIGSEGV, align 4
  %43 = call i64 @sigaction(i32 %42, %struct.sigaction* %1, i32* null)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %59

47:                                               ; preds = %41
  %48 = load i32, i32* @SIGUSR1, align 4
  %49 = call i64 @sigaction(i32 %48, %struct.sigaction* %1, i32* null)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %59

53:                                               ; preds = %47
  %54 = load i32, i32* @SIGUSR2, align 4
  %55 = call i64 @sigaction(i32 %54, %struct.sigaction* %1, i32* null)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %9, %15, %21, %27, %33, %39, %45, %51, %57, %53
  ret void
}

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
