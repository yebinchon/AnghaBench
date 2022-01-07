; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/basename/extr_basename.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/basename/extr_basename.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"capsicum\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"as:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @LC_ALL, align 4
  %12 = call i32 @setlocale(i32 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = call i64 (...) @caph_limit_stdio()
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = call i64 (...) @caph_enter()
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %2
  %19 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  store i32 0, i32* %9, align 4
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %34, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %32 [
    i32 97, label %28
    i32 115, label %29
    i32 63, label %31
  ]

28:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %34

29:                                               ; preds = %26
  %30 = load i8*, i8** @optarg, align 8
  store i8* %30, i8** %7, align 8
  br label %34

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %26, %31
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %32, %29, %28
  br label %21

35:                                               ; preds = %21
  %36 = load i64, i64* @optind, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41
  store i8** %43, i8*** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %46, %35
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 @exit(i32 0) #3
  unreachable

57:                                               ; preds = %48
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @basename(i8* %60)
  store i8* %61, i8** %6, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %63, %57
  %69 = load i8*, i8** %7, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %7, align 8
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %77, %74, %71, %68
  %84 = load i8*, i8** %7, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i8*, i8** %7, align 8
  %88 = call i64 @strlen(i8* %87)
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %104, %89
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %4, align 4
  %93 = icmp ne i32 %91, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %90
  %95 = load i8**, i8*** %5, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @basename(i8* %96)
  store i8* %97, i8** %6, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = load i8*, i8** %6, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @stripsuffix(i8* %105, i8* %106, i64 %107)
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i32 1
  store i8** %110, i8*** %5, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %111)
  br label %90

113:                                              ; preds = %90
  %114 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @basename(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @stripsuffix(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
