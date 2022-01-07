; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sigqueue/sigqtest1/extr_sigqtest1.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sigqueue/sigqtest1/extr_sigqtest1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }
%union.sigval = type { i32 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@handler = common dso_local global i32 0, align 4
@SIGRTMIN = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"errno != EAGAIN\00", align 1
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@received = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"error, signal lost\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 4
  %3 = alloca %union.sigval, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @SA_SIGINFO, align 4
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  %10 = call i32 @sigemptyset(i32* %9)
  %11 = load i32, i32* @handler, align 4
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @SIGRTMIN, align 4
  %14 = call i32 @sigaction(i32 %13, %struct.sigaction* %2, i32* null)
  %15 = call i32 @sigemptyset(i32* %6)
  %16 = load i32, i32* @SIGRTMIN, align 4
  %17 = call i32 @sigaddset(i32* %6, i32 %16)
  %18 = load i32, i32* @SIG_BLOCK, align 4
  %19 = call i32 @sigprocmask(i32 %18, i32* %6, i32* null)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %37, %0
  %21 = load i32, i32* %5, align 4
  %22 = bitcast %union.sigval* %3 to i32*
  store i32 %21, i32* %22, align 4
  %23 = call i32 (...) @getpid()
  %24 = load i32, i32* @SIGRTMIN, align 4
  %25 = getelementptr inbounds %union.sigval, %union.sigval* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sigqueue(i32 %23, i32 %24, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EAGAIN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  br label %40

37:                                               ; preds = %20
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %20

40:                                               ; preds = %36
  %41 = load i32, i32* @SIG_UNBLOCK, align 4
  %42 = call i32 @sigprocmask(i32 %41, i32* %6, i32* null)
  %43 = load i32, i32* @received, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %40
  %49 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @sigqueue(i32, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
