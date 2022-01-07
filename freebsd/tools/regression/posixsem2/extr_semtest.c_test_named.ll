; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem2/extr_semtest.c_test_named.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem2/extr_semtest.c_test_named.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"testing named process-shared semaphore\0A\00", align 1
@SEM_NAME = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@SEM_FAILED = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"sem_open failed\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"second sem_open call failed\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"two sem_open calls for same semaphore do not return same address\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"sem_close failed\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"child: sem_wait()\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"sem_wait failed\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"child: sem_wait() returned\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"parent: sem_post()\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"sem_post failed\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"OK.\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Failure.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_named() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @SEM_NAME, align 4
  %7 = call i32 @sem_unlink(i32 %6)
  %8 = load i32, i32* @SEM_NAME, align 4
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = call i32* @sem_open(i32 %8, i32 %9, i32 511, i32 0)
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = load i32*, i32** @SEM_FAILED, align 8
  %13 = icmp eq i32* %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32, i32* @SEM_NAME, align 4
  %18 = load i32, i32* @O_CREAT, align 4
  %19 = call i32* @sem_open(i32 %17, i32 %18, i32 511, i32 0)
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** @SEM_FAILED, align 8
  %22 = icmp eq i32* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @err(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %16
  %26 = load i32*, i32** %1, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = icmp ne i32* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @errx(i32 3, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32*, i32** %2, align 8
  %33 = call i64 @sem_close(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @err(i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  %38 = call i32 (...) @fork()
  store i32 %38, i32* %3, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %42 = load i32*, i32** %1, align 8
  %43 = call i64 @sem_wait(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @err(i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  %48 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %49 = call i32 @exit(i32 0) #3
  unreachable

50:                                               ; preds = %37
  %51 = call i32 @sleep(i32 1)
  %52 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %53 = load i32*, i32** %1, align 8
  %54 = call i64 @sem_post(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 @err(i32 6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @waitpid(i32 %59, i32* %4, i32 0)
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @WIFEXITED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @WEXITSTATUS(i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %72

70:                                               ; preds = %64, %58
  %71 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %68
  br label %73

73:                                               ; preds = %72
  %74 = load i32*, i32** %1, align 8
  %75 = call i64 @sem_close(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @err(i32 7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sem_unlink(i32) #1

declare dso_local i32* @sem_open(i32, i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @sem_close(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i64 @sem_wait(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @sem_post(i32*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
