; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_grep.c_read_patterns.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_grep.c_read_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @read_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_patterns(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32*, i32** @stdin, align 8
  store i32* %12, i32** %4, align 8
  br label %21

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %13
  br label %21

21:                                               ; preds = %20, %11
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @fileno(i32* %22)
  %24 = call i32 @fstat(i32 %23, %struct.stat* %3)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISDIR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @fclose(i32* %32)
  br label %76

34:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  store i8* null, i8** %5, align 8
  br label %35

35:                                               ; preds = %57, %45, %34
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @getline(i8** %5, i64* %6, i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %35

46:                                               ; preds = %39
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  br label %57

57:                                               ; preds = %54, %53
  %58 = phi i64 [ 0, %53 ], [ %56, %54 ]
  %59 = call i32 @add_pattern(i8* %47, i64 %58)
  br label %35

60:                                               ; preds = %35
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i64 @ferror(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i8*, i8** %2, align 8
  %68 = call i32 @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %60
  %70 = load i8*, i8** %2, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @fclose(i32* %74)
  br label %76

76:                                               ; preds = %31, %73, %69
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @add_pattern(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
