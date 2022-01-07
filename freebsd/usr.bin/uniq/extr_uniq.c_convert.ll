; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/uniq/extr_uniq.c_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/uniq/extr_uniq.c_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"conversion buffer length overflow\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"internal mbstowcs() error\00", align 1
@numfields = common dso_local global i64 0, align 8
@numchars = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"wcsdup\00", align 1
@iflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @convert(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @mbstowcs(i32* null, i8* %8, i64 0)
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %92

12:                                               ; preds = %1
  %13 = load i32, i32* @SIZE_MAX, align 4
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 4
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %16, 1
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %12
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 1
  %24 = mul i64 %23, 4
  %25 = call i32* @malloc(i64 %24)
  store i32* %25, i32** %5, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32*, i32** %5, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  %34 = call i64 @mbstowcs(i32* %30, i8* %31, i64 %33)
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %29
  %40 = load i64, i64* %4, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* %4, align 8
  %52 = sub i64 %51, 1
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %42, %39
  %55 = load i64, i64* @numfields, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* @numchars, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57, %54
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @skip(i32* %61)
  %63 = call i32* @wcsdup(i32 %62)
  store i32* %63, i32** %6, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @free(i32* %68)
  br label %72

70:                                               ; preds = %57
  %71 = load i32*, i32** %5, align 8
  store i32* %71, i32** %6, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i64, i64* @iflag, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load i32*, i32** %6, align 8
  store i32* %76, i32** %7, align 8
  br label %77

77:                                               ; preds = %86, %75
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @towlower(i32 %83)
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %81
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %7, align 8
  br label %77

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i32*, i32** %6, align 8
  store i32* %91, i32** %2, align 8
  br label %92

92:                                               ; preds = %90, %11
  %93 = load i32*, i32** %2, align 8
  ret i32* %93
}

declare dso_local i64 @mbstowcs(i32*, i8*, i64) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @wcsdup(i32) #1

declare dso_local i32 @skip(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @towlower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
