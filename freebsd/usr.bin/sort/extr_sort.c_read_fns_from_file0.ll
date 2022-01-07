; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_read_fns_from_file0.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_read_fns_from_file0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@argc_from_file0 = common dso_local global i64 0, align 8
@argv_from_file0 = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%s: getdelim\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @read_fns_from_file0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_fns_from_file0(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %64

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %52, %18
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @getdelim(i8** %4, i64* %5, i8 signext 0, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load i64, i64* @argc_from_file0, align 8
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i64 0, i64* @argc_from_file0, align 8
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i64, i64* @argc_from_file0, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* @argc_from_file0, align 8
  %35 = load i8**, i8*** @argv_from_file0, align 8
  %36 = load i64, i64* @argc_from_file0, align 8
  %37 = mul i64 %36, 8
  %38 = call i8** @sort_realloc(i8** %35, i64 %37)
  store i8** %38, i8*** @argv_from_file0, align 8
  %39 = load i8**, i8*** @argv_from_file0, align 8
  %40 = icmp eq i8** %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = call i32 (i32, i8*, ...) @err(i32 2, i8* null)
  br label %43

43:                                               ; preds = %41, %32
  %44 = load i8*, i8** %4, align 8
  %45 = load i8**, i8*** @argv_from_file0, align 8
  %46 = load i64, i64* @argc_from_file0, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  store i8* %44, i8** %48, align 8
  br label %52

49:                                               ; preds = %23
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @free(i8* %50)
  br label %52

52:                                               ; preds = %49, %43
  store i8* null, i8** %4, align 8
  store i64 0, i64* %5, align 8
  br label %19

53:                                               ; preds = %19
  %54 = load i32*, i32** %3, align 8
  %55 = call i64 @ferror(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %2, align 8
  %59 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32*, i32** %3, align 8
  %62 = load i8*, i8** %2, align 8
  %63 = call i32 @closefile(i32* %61, i8* %62)
  br label %64

64:                                               ; preds = %60, %9
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @getdelim(i8**, i64*, i8 signext, i32*) #1

declare dso_local i8** @sort_realloc(i8**, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @closefile(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
