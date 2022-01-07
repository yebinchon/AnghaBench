; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/pipe/extr_big_pipe_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/pipe/extr_big_pipe_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIG_PIPE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pipe failed\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"fcntl failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"fork failed: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @BIG_PIPE_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %12 = call i64 @pipe(i32* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @F_GETFL, align 4
  %20 = call i32 (i32, i32, ...) @fcntl(i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @F_SETFL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @O_NONBLOCK, align 4
  %29 = or i32 %27, %28
  %30 = call i32 (i32, i32, ...) @fcntl(i32 %25, i32 %26, i32 %29)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %37

32:                                               ; preds = %23, %16
  %33 = load i32, i32* @errno, align 4
  %34 = call i8* @strerror(i32 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = call i32 @exit(i32 1) #4
  unreachable

37:                                               ; preds = %23
  %38 = call i32 (...) @fork()
  switch i32 %38, label %62 [
    i32 -1, label %39
    i32 0, label %43
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* @errno, align 4
  %41 = call i8* @strerror(i32 %40)
  %42 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  br label %63

43:                                               ; preds = %37
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @close(i32 %45)
  br label %47

47:                                               ; preds = %59, %43
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @read(i32 %49, i8* %10, i32 256)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %60

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  br label %47

60:                                               ; preds = %53
  %61 = call i32 @exit(i32 0) #4
  unreachable

62:                                               ; preds = %37
  br label %63

63:                                               ; preds = %62, %39
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @close(i32 %65)
  %67 = trunc i64 %8 to i32
  %68 = call i32 @memset(i8* %10, i32 0, i32 %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %77, %63
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 1000
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = trunc i64 %8 to i32
  %76 = call i32 @write_frame(i32 %74, i8* %10, i32 %75)
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %69

80:                                               ; preds = %69
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %82 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pipe(i32*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @fcntl(i32, i32, ...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @fork(...) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @write_frame(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
