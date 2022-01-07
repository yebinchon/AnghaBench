; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ndp/extr_ndp.c_sec2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ndp/extr_ndp.c_sec2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sec2str.result = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%dd\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%dh\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%dm\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @sec2str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sec2str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @sec2str.result, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @sec2str.result, i64 1, i64 0), i8** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sdiv i32 %12, 3600
  %14 = sdiv i32 %13, 24
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sdiv i32 %15, 3600
  %17 = srem i32 %16, 24
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sdiv i32 %18, 60
  %20 = srem i32 %19, 60
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %3, align 4
  %22 = srem i32 %21, 60
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @snprintf(i8* %26, i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = icmp sge i64 %39, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37, %25
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %128

47:                                               ; preds = %37
  %48 = load i32, i32* %11, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %47, %1
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %55, %52
  store i32 0, i32* %8, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @snprintf(i8* %59, i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = icmp sge i64 %72, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %70, %58
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %128

80:                                               ; preds = %70
  %81 = load i32, i32* %11, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %9, align 8
  br label %85

85:                                               ; preds = %80, %55
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %118

91:                                               ; preds = %88, %85
  store i32 0, i32* %8, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @snprintf(i8* %92, i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = load i8*, i8** %10, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = icmp sge i64 %105, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %103, %91
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %128

113:                                              ; preds = %103
  %114 = load i32, i32* %11, align 4
  %115 = load i8*, i8** %9, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %9, align 8
  br label %118

118:                                              ; preds = %113, %88
  %119 = load i8*, i8** %9, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @snprintf(i8* %119, i32 %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @sec2str.result, i64 0, i64 0), i8** %2, align 8
  br label %128

128:                                              ; preds = %118, %112, %79, %46
  %129 = load i8*, i8** %2, align 8
  ret i8* %129
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
