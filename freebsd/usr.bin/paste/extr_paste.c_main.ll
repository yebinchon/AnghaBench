; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/paste/extr_paste.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/paste/extr_paste.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"d:s\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"delimiters\00", align 1
@delim = common dso_local global i32* null, align 8
@delimcnt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@tab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @LC_CTYPE, align 4
  %13 = call i32 @setlocale(i32 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %54, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %55

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %52 [
    i32 100, label %21
    i32 115, label %50
    i32 63, label %51
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** %10, align 8
  %23 = call i64 @mbsrtowcs(i32* null, i8** %10, i64 0, i32* null)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i64, i64* %11, align 8
  %30 = add i64 %29, 1
  %31 = mul i64 %30, 4
  %32 = call i32* @malloc(i64 %31)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 @err(i32 1, i8* null)
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i8*, i8** @optarg, align 8
  store i8* %38, i8** %10, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, 1
  %42 = call i64 @mbsrtowcs(i32* %39, i8** %10, i64 %41, i32* null)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %37
  %48 = load i32*, i32** %9, align 8
  store i32* %48, i32** @delim, align 8
  %49 = call i32 @tr(i32* %48)
  store i32 %49, i32* @delimcnt, align 4
  br label %54

50:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %54

51:                                               ; preds = %19
  br label %52

52:                                               ; preds = %19, %51
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %50, %47
  br label %14

55:                                               ; preds = %14
  %56 = load i64, i64* @optind, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %4, align 4
  %61 = load i64, i64* @optind, align 8
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 %61
  store i8** %63, i8*** %5, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = call i32 (...) @usage()
  br label %69

69:                                               ; preds = %67, %55
  %70 = load i32*, i32** @delim, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  store i32 1, i32* @delimcnt, align 4
  %73 = load i32*, i32** @tab, align 8
  store i32* %73, i32** @delim, align 8
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8**, i8*** %5, align 8
  %79 = call i32 @sequential(i8** %78)
  store i32 %79, i32* %7, align 4
  br label %83

80:                                               ; preds = %74
  %81 = load i8**, i8*** %5, align 8
  %82 = call i32 @parallel(i8** %81)
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @exit(i32 %84) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @mbsrtowcs(i32*, i8**, i64, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @tr(i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @sequential(i8**) #1

declare dso_local i32 @parallel(i8**) #1

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
