; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_dump.c_sec2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_dump.c_sec2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@sec2str.result = internal global [256 x i8] zeroinitializer, align 16
@CLOCK_MONOTONIC_FAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%dd\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%dh\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%dm\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%ds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sec2str(%struct.timespec* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec, align 4
  %13 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store i32 1, i32* %8, align 4
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @sec2str.result, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @sec2str.result, i64 1, i64 0), i8** %10, align 8
  %14 = load i32, i32* @CLOCK_MONOTONIC_FAST, align 4
  %15 = call i32 @clock_gettime(i32 %14, %struct.timespec* %12)
  %16 = load %struct.timespec*, %struct.timespec** %3, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.timespec*, %struct.timespec** %3, align 8
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 1000
  %23 = sdiv i32 %22, 1000000
  %24 = load i32, i32* %13, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %13, align 4
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %13, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %13, align 4
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 1000
  %33 = sdiv i32 %32, 1000000
  %34 = load i32, i32* %13, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = sdiv i32 %36, 3600
  %38 = sdiv i32 %37, 24
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sdiv i32 %39, 3600
  %41 = srem i32 %40, 24
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %13, align 4
  %43 = sdiv i32 %42, 60
  %44 = srem i32 %43, 60
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %13, align 4
  %46 = srem i32 %45, 60
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @snprintf(i8* %50, i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = icmp sge i64 %63, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61, %49
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %152

71:                                               ; preds = %61
  %72 = load i32, i32* %11, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %9, align 8
  br label %76

76:                                               ; preds = %71, %1
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %79, %76
  store i32 0, i32* %8, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @snprintf(i8* %83, i32 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = icmp sge i64 %96, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %94, %82
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %152

104:                                              ; preds = %94
  %105 = load i32, i32* %11, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %9, align 8
  br label %109

109:                                              ; preds = %104, %79
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %112, %109
  store i32 0, i32* %8, align 4
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @snprintf(i8* %116, i32 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %115
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = load i8*, i8** %10, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = icmp sge i64 %129, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %127, %115
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %152

137:                                              ; preds = %127
  %138 = load i32, i32* %11, align 4
  %139 = load i8*, i8** %9, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %9, align 8
  br label %142

142:                                              ; preds = %137, %112
  %143 = load i8*, i8** %9, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @snprintf(i8* %143, i32 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @sec2str.result, i64 0, i64 0), i8** %2, align 8
  br label %152

152:                                              ; preds = %142, %136, %103, %70
  %153 = load i8*, i8** %2, align 8
  ret i8* %153
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
