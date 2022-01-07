; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rev/extr_rev.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rev/extr_rev.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optind = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @LC_ALL, align 4
  %14 = call i32 @setlocale(i32 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %25, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %11, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %11, align 4
  switch i32 %21, label %23 [
    i32 63, label %22
  ]

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %20, %22
  %24 = call i32 (...) @usage()
  br label %25

25:                                               ; preds = %23
  br label %15

26:                                               ; preds = %15
  %27 = load i64, i64* @optind, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i64, i64* @optind, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 %32
  store i8** %34, i8*** %5, align 8
  %35 = load i32*, i32** @stdin, align 8
  store i32* %35, i32** %9, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %101, %26
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %43, i32** %9, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  store i32 1, i32* %12, align 4
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %5, align 8
  br label %101

51:                                               ; preds = %40
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %5, align 8
  %54 = load i8*, i8** %52, align 8
  store i8* %54, i8** %6, align 8
  br label %55

55:                                               ; preds = %51, %36
  br label %56

56:                                               ; preds = %87, %55
  %57 = load i32*, i32** %9, align 8
  %58 = call i8* @fgetwln(i32* %57, i64* %10)
  store i8* %58, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %89

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = sub i64 %62, 1
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 10
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %68, %60
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = getelementptr inbounds i8, i8* %74, i64 -1
  store i8* %75, i8** %8, align 8
  br label %76

76:                                               ; preds = %84, %71
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = icmp uge i8* %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @putwchar(i8 signext %82)
  br label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 -1
  store i8* %86, i8** %8, align 8
  br label %76

87:                                               ; preds = %76
  %88 = call i32 @putwchar(i8 signext 10)
  br label %56

89:                                               ; preds = %56
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 @ferror(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %94)
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @clearerr(i32* %96)
  store i32 1, i32* %12, align 4
  br label %98

98:                                               ; preds = %93, %89
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @fclose(i32* %99)
  br label %101

101:                                              ; preds = %98, %45
  %102 = load i8**, i8*** %5, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %36, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @exit(i32 %106) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i8* @fgetwln(i32*, i64*) #1

declare dso_local i32 @putwchar(i8 signext) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i32 @fclose(i32*) #1

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
