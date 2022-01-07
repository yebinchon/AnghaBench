; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/indent_wrapper/extr_indent_wrapper.c_cmd_popen.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/indent_wrapper/extr_indent_wrapper.c_cmd_popen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@environ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32**)* @cmd_popen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_popen(i8* %0, i32** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca [4 x i8*], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32** %1, i32*** %4, align 8
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %9 = call i64 @pipe(i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %81

12:                                               ; preds = %2
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = call i64 @pipe(i32* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* %18, align 16
  %20 = call i32 @close(i32 %19)
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @close(i32 %22)
  br label %81

24:                                               ; preds = %12
  %25 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %25, align 16
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 2
  store i8* %27, i8** %28, align 16
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 3
  store i8* null, i8** %29, align 8
  %30 = call i32 @vfork() #4
  store i32 %30, i32* %7, align 4
  switch i32 %30, label %63 [
    i32 -1, label %31
    i32 0, label %44
  ]

31:                                               ; preds = %24
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = call i32 @close(i32 %33)
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @close(i32 %36)
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @close(i32 %39)
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @close(i32 %42)
  br label %81

44:                                               ; preds = %24
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @STDOUT_FILENO, align 4
  %48 = call i32 @dup2(i32 %46, i32 %47)
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @STDIN_FILENO, align 4
  %52 = call i32 @dup2(i32 %50, i32 %51)
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %54 = load i32, i32* %53, align 16
  %55 = call i32 @close(i32 %54)
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %57)
  %59 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %60 = load i32, i32* @environ, align 4
  %61 = call i32 @execve(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %59, i32 %60)
  %62 = call i32 @exit(i32 127) #5
  unreachable

63:                                               ; preds = %24
  br label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @fdopen(i32 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32**, i32*** %4, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 0
  store i32* %67, i32** %69, align 8
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = call i32* @fdopen(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32**, i32*** %4, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  store i32* %72, i32** %74, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @close(i32 %76)
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @close(i32 %79)
  br label %86

81:                                               ; preds = %31, %17, %11
  %82 = load i32**, i32*** %4, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 1
  store i32* null, i32** %83, align 8
  %84 = load i32**, i32*** %4, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %81, %64
  ret void
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #2

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @execve(i8*, i8**, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @fdopen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
