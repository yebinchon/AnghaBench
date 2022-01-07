; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/pipe/extr_pipe_ino_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/pipe/extr_pipe_ino_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"FAIL: pipe\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"FAIL: fstat st1\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"FAIL: fstat st2\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"FAIL: wrong dev number %ju %ju\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"FAIL: inode numbers are equal: %ju\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %6 = call i32 @pipe(i32* %5)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @fstat(i32 %12, %struct.stat* %3)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fstat(i32 %19, %struct.stat* %4)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34, %30, %24
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %38, %34
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @close(i32 %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @close(i32 %62)
  %64 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @errx(i32, i8*, i32, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
