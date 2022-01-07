; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_compile_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_compile_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @compile_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @compile_text() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %16 = mul nsw i32 2, %15
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i8* @malloc(i32 %18)
  store i8* %19, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %0
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %95, %23
  %25 = trunc i64 %12 to i32
  %26 = call i32* @cu_fgets(i8* %14, i32 %25, i32* null)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %96

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %7, align 8
  store i8* %32, i8** %6, align 8
  store i8* %14, i8** %5, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %61, %28
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 92
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %49, %43, %38
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %7, align 8
  store i8 %58, i8* %59, align 1
  br label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %5, align 8
  br label %33

64:                                               ; preds = %33
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %2, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %64
  %77 = load i8*, i8** %7, align 8
  store i8 0, i8* %77, align 1
  br label %96

78:                                               ; preds = %64
  %79 = load i32, i32* %1, align 4
  %80 = load i32, i32* %3, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %83 = add nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = load i32, i32* %1, align 4
  %87 = mul nsw i32 %86, 2
  store i32 %87, i32* %1, align 4
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* %1, align 4
  %90 = call i8* @realloc(i8* %88, i32 %89)
  store i8* %90, i8** %4, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %85
  br label %95

95:                                               ; preds = %94, %78
  br label %24

96:                                               ; preds = %76, %24
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 0, i8* %100, align 1
  %101 = load i8*, i8** %4, align 8
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  %104 = call i8* @realloc(i8* %101, i32 %103)
  store i8* %104, i8** %5, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %96
  %109 = load i8*, i8** %5, align 8
  %110 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %110)
  ret i8* %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32* @cu_fgets(i8*, i32, i32*) #2

declare dso_local i8* @realloc(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
