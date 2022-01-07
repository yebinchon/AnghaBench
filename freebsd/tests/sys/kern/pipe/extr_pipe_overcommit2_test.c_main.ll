; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/pipe/extr_pipe_overcommit2_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/pipe/extr_pipe_overcommit2_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.template = private unnamed_addr constant [16 x i8] c"pipe.XXXXXXXXXX\00", align 16
@.str = private unnamed_addr constant [15 x i8] c"mkstemp failed\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca [10000 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast [16 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.main.template, i32 0, i32 0), i64 16, i1 false)
  store i32 -1, i32* %3, align 4
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %9 = call i32 @mkstemp(i8* %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 0
  %17 = call i32 @nitems(i32* %16)
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @open(i8* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @ENFILE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EMFILE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25
  br label %40

34:                                               ; preds = %29, %19
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %14

40:                                               ; preds = %33, %14
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %49, %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp ult i32 %42, 1000
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 %46
  %48 = call i32 @pipe(i32* %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %41

52:                                               ; preds = %41
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @close(i32 %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %63, %52
  %56 = load i32, i32* %6, align 4
  %57 = icmp ult i32 %56, 1000
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 %60
  %62 = call i32 @pipe(i32* %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %55

66:                                               ; preds = %55
  %67 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %69 = call i32 @unlink(i8* %68)
  %70 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @nitems(i32*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @pipe(i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @unlink(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
