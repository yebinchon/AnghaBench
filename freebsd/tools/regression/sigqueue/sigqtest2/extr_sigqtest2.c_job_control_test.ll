; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sigqueue/sigqtest2/extr_sigqtest2.c_job_control_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sigqueue/sigqtest2/extr_sigqtest2.c_job_control_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@job_handler = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@stop_received = common dso_local global i64 0, align 8
@cont_received = common dso_local global i64 0, align 8
@exit_received = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"child %d\0A\00", align 1
@SIGSTOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"job signals lost\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"job control test OK.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @job_control_test() #0 {
  %1 = alloca %struct.sigaction, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 10, i32* %3, align 4
  %4 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  %5 = call i32 @sigemptyset(i32* %4)
  %6 = load i32, i32* @SA_SIGINFO, align 4
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @job_handler, align 4
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @SIGCHLD, align 4
  %11 = call i32 @sigaction(i32 %10, %struct.sigaction* %1, i32* null)
  store i64 0, i64* @stop_received, align 8
  store i64 0, i64* @cont_received, align 8
  store i64 0, i64* @exit_received, align 8
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @fflush(i32 %12)
  %14 = call i64 (...) @fork()
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %0
  %18 = call i32 (...) @getpid()
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 (...) @getpid()
  %21 = load i32, i32* @SIGSTOP, align 4
  %22 = call i32 @kill(i32 %20, i32 %21)
  %23 = call i32 @sleep(i32 2)
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %0
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i64, i64* @cont_received, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i64, i64* @stop_received, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* @exit_received, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %32, %29, %26
  %36 = phi i1 [ false, %29 ], [ false, %26 ], [ %34, %32 ]
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = call i32 @sleep(i32 1)
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %3, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %45

44:                                               ; preds = %38
  br label %26

45:                                               ; preds = %43, %35
  %46 = load i64, i64* @cont_received, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i64, i64* @stop_received, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, i64* @exit_received, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51, %48, %45
  %55 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
