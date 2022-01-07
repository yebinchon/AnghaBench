; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_getpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_getpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"FORTUNE_PATH\00", align 1
@Fortune_path = common dso_local global i32* null, align 8
@FORTDIR = common dso_local global i32* null, align 8
@Fortune_path_arr = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"fortune: FORTUNE_PATH: None of the specified directories found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @getpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getpath() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 1, i32* %2, align 4
  %7 = call i32* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** @Fortune_path, align 8
  %8 = load i32*, i32** @Fortune_path, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32*, i32** @FORTDIR, align 8
  store i32* %11, i32** @Fortune_path, align 8
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32*, i32** @Fortune_path, align 8
  %14 = call i8* @strdup(i32* %13)
  store i8* %14, i8** %6, align 8
  store i32 2, i32* %1, align 4
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %3, align 8
  br label %16

16:                                               ; preds = %30, %12
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  br label %16

33:                                               ; preds = %16
  %34 = load i32, i32* %1, align 4
  %35 = call i64 @calloc(i32 %34, i32 8)
  %36 = inttoptr i64 %35 to i8**
  store i8** %36, i8*** @Fortune_path_arr, align 8
  store i8** %36, i8*** %4, align 8
  store i32 0, i32* %1, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @strtok(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %52, %33
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @is_dir(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i8**, i8*** %4, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %51, i8*** %4, align 8
  store i8* %49, i8** %50, align 8
  br label %52

52:                                               ; preds = %46, %42
  %53 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %53, i8** %5, align 8
  br label %39

54:                                               ; preds = %39
  %55 = load i32, i32* %1, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load i32, i32* %2, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %57
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32*, i32** @FORTDIR, align 8
  %68 = call i8* @strdup(i32* %67)
  %69 = load i8**, i8*** @Fortune_path_arr, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %64, %54
  ret void
}

declare dso_local i32* @getenv(i8*) #1

declare dso_local i8* @strdup(i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @is_dir(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
