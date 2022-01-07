; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/cap_test/extr_cap_test.c_execute.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/cap_test/extr_cap_test.c_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i8*, i32 (...)* }

@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%s %d - %s\0A\00", align 1
@PASSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"not ok\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execute(i32 %0, %struct.test* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.test* %1, %struct.test** %4, align 8
  %8 = call i64 (...) @fork()
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %22, %16
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @waitpid(i64 %18, i32* %7, i32 0)
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %17

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @WIFEXITED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @WEXITSTATUS(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @FAILED, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %27
  br label %39

33:                                               ; preds = %13
  %34 = load %struct.test*, %struct.test** %4, align 8
  %35 = getelementptr inbounds %struct.test, %struct.test* %34, i32 0, i32 1
  %36 = load i32 (...)*, i32 (...)** %35, align 8
  %37 = call i32 (...) %36()
  %38 = call i32 @exit(i32 %37) #3
  unreachable

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @PASSED, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.test*, %struct.test** %4, align 8
  %47 = getelementptr inbounds %struct.test, %struct.test* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %45, i8* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
