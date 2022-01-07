; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkfifo/extr_mkfifo.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkfifo/extr_mkfifo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"m:\00", align 1
@f_mode = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"setmode\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid file mode: %s\00", align 1
@BASEMODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %9, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %21 [
    i32 109, label %18
    i32 63, label %20
  ]

18:                                               ; preds = %16
  store i32 1, i32* @f_mode, align 4
  %19 = load i8*, i8** @optarg, align 8
  store i8* %19, i8** %6, align 8
  br label %23

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %16, %20
  %22 = call i32 (...) @usage()
  br label %23

23:                                               ; preds = %21, %18
  br label %11

24:                                               ; preds = %11
  %25 = load i64, i64* @optind, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i64, i64* @optind, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 %30
  store i8** %32, i8*** %5, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %24
  %40 = load i32, i32* @f_mode, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = call i32 @umask(i32 0)
  store i64 0, i64* @errno, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @setmode(i8* %44)
  store i8* %45, i8** %7, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i64, i64* @errno, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %42
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* @BASEMODE, align 4
  %58 = call i32 @getmode(i8* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  br label %61

59:                                               ; preds = %39
  %60 = load i32, i32* @BASEMODE, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %55
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @mkfifo(i8* %68, i32 %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i8**, i8*** %5, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  store i32 1, i32* %10, align 4
  br label %76

76:                                               ; preds = %72, %66
  br label %77

77:                                               ; preds = %76
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i32 1
  store i8** %79, i8*** %5, align 8
  br label %62

80:                                               ; preds = %62
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @exit(i32 %81) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i8* @setmode(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @getmode(i8*, i32) #1

declare dso_local i64 @mkfifo(i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
