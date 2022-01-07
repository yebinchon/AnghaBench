; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem2/extr_semtest.c_test_named2.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem2/extr_semtest.c_test_named2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [54 x i8] c"testing named process-shared semaphore, O_EXCL cases\0A\00", align 1
@SEM_NAME = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@SEM_FAILED = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"sem_open failed\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"second sem_open call wrongly succeeded\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"second sem_open call failed with wrong errno\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"third sem_open call failed\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"two sem_open calls for same semaphore do not return same address\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"sem_close failed\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"OK.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_named2() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @SEM_NAME, align 4
  %6 = call i32 @sem_unlink(i32 %5)
  %7 = load i32, i32* @SEM_NAME, align 4
  %8 = load i32, i32* @O_CREAT, align 4
  %9 = load i32, i32* @O_EXCL, align 4
  %10 = or i32 %8, %9
  %11 = call i32* (i32, i32, ...) @sem_open(i32 %7, i32 %10, i32 511, i32 0)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = load i32*, i32** @SEM_FAILED, align 8
  %14 = icmp eq i32* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %0
  %18 = load i32, i32* @SEM_NAME, align 4
  %19 = load i32, i32* @O_CREAT, align 4
  %20 = load i32, i32* @O_EXCL, align 4
  %21 = or i32 %19, %20
  %22 = call i32* (i32, i32, ...) @sem_open(i32 %18, i32 %21, i32 511, i32 0)
  store i32* %22, i32** %2, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = load i32*, i32** @SEM_FAILED, align 8
  %25 = icmp ne i32* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 @errx(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EEXIST, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @err(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* @SEM_NAME, align 4
  %36 = call i32* (i32, i32, ...) @sem_open(i32 %35, i32 0)
  store i32* %36, i32** %3, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** @SEM_FAILED, align 8
  %39 = icmp eq i32* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @err(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i32*, i32** %1, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = icmp ne i32* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @errx(i32 5, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32*, i32** %3, align 8
  %50 = call i64 @sem_close(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @err(i32 6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32*, i32** %1, align 8
  %56 = call i64 @sem_close(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @err(i32 7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  %61 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sem_unlink(i32) #1

declare dso_local i32* @sem_open(i32, i32, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @sem_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
