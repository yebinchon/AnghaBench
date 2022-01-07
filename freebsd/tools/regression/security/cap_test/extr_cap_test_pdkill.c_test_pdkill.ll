; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/cap_test/extr_cap_test_pdkill.c_test_pdkill.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/cap_test/extr_cap_test_pdkill.c_test_pdkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PASSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pdfork\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@handle_signal = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pdgetpid\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pdkill\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_pdkill() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @PASSED, align 4
  store i32 %6, i32* %1, align 4
  %7 = call i32 @pdfork(i32* %2, i32 0)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %23

12:                                               ; preds = %0
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* @SIGINT, align 4
  %17 = load i32, i32* @handle_signal, align 4
  %18 = call i32 @signal(i32 %16, i32 %17)
  %19 = call i32 @sleep(i32 3600)
  %20 = load i32, i32* @FAILED, align 4
  %21 = call i32 @exit(i32 %20) #3
  unreachable

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %10
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @pdgetpid(i32 %24, i64* %4)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @FAIL(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = call i32 @usleep(i32 100)
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @SIGINT, align 4
  %34 = call i32 @pdkill(i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @FAIL(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %30
  br label %40

40:                                               ; preds = %45, %39
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @waitpid(i64 %41, i32* %5, i32 0)
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %40

46:                                               ; preds = %40
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @PASSED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @WIFEXITED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @WEXITSTATUS(i32 %55)
  store i32 %56, i32* %1, align 4
  br label %59

57:                                               ; preds = %50, %46
  %58 = load i32, i32* @FAILED, align 4
  store i32 %58, i32* %1, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @pdfork(i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pdgetpid(i32, i64*) #1

declare dso_local i32 @FAIL(i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @pdkill(i32, i32) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
