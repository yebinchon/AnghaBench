; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem2/extr_semtest.c_test_unnamed.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem2/extr_semtest.c_test_unnamed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"testing unnamed process-shared semaphore\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"mmap failed\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"sem_init failed\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"child: sem_wait()\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"sem_wait failed\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"child: sem_wait() returned\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"parent: sem_post()\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"sem_post failed\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"OK.\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Failure.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_unnamed() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @PROT_READ, align 4
  %6 = load i32, i32* @PROT_WRITE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MAP_ANON, align 4
  %9 = load i32, i32* @MAP_SHARED, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @mmap(i32* null, i32 4, i32 %7, i32 %10, i32 -1, i32 0)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = load i32*, i32** @MAP_FAILED, align 8
  %15 = icmp eq i32* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %0
  %19 = load i32*, i32** %1, align 8
  %20 = call i64 @sem_init(i32* %19, i32 1, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @err(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = call i32 (...) @fork()
  store i32 %25, i32* %2, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32*, i32** %1, align 8
  %30 = call i64 @sem_wait(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @err(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %36 = call i32 @exit(i32 0) #3
  unreachable

37:                                               ; preds = %24
  %38 = call i32 @sleep(i32 1)
  %39 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %40 = load i32*, i32** %1, align 8
  %41 = call i64 @sem_post(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @err(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @waitpid(i32 %46, i32* %3, i32 0)
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @WIFEXITED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = call i64 @WEXITSTATUS(i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %59

57:                                               ; preds = %51, %45
  %58 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %55
  br label %60

60:                                               ; preds = %59
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @sem_init(i32*, i32, i32) #1

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
