; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_main.c_DumpAscii.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_main.c_DumpAscii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%04x:  \00", align 1
@DUMP_BYTES_PER_LINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DumpAscii(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca [100 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %138, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %142

13:                                               ; preds = %9
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %15 = load i32, i32* %8, align 4
  %16 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %14, i32 100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %59, %13
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @DUMP_BYTES_PER_LINE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %30 = call i32 @strlen(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %34 = call i32 @strlen(i8* %33)
  %35 = sext i32 %34 to i64
  %36 = sub i64 100, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %32, i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %58

46:                                               ; preds = %21
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %49 = call i32 @strlen(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %53 = call i32 @strlen(i8* %52)
  %54 = sext i32 %53 to i64
  %55 = sub i64 100, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %51, i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %46, %27
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %17

62:                                               ; preds = %17
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %64 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %65 = call i32 @strlen(i8* %64)
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %69 = call i32 @strlen(i8* %68)
  %70 = sext i32 %69 to i64
  %71 = sub i64 100, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %67, i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %132, %62
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @DUMP_BYTES_PER_LINE, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %135

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %119

84:                                               ; preds = %78
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @isprint(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %84
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %100, align 4
  br label %103

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %102, %94
  %104 = phi i32 [ %101, %94 ], [ 46, %102 ]
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %5, align 1
  %106 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %107 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %108 = call i32 @strlen(i8* %107)
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  %111 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %112 = call i32 @strlen(i8* %111)
  %113 = sext i32 %112 to i64
  %114 = sub i64 100, %113
  %115 = trunc i64 %114 to i32
  %116 = load i8, i8* %5, align 1
  %117 = sext i8 %116 to i32
  %118 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %110, i32 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  br label %131

119:                                              ; preds = %78
  %120 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %121 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %122 = call i32 @strlen(i8* %121)
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %126 = call i32 @strlen(i8* %125)
  %127 = sext i32 %126 to i64
  %128 = sub i64 100, %127
  %129 = trunc i64 %128 to i32
  %130 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %124, i32 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %131

131:                                              ; preds = %119, %103
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %74

135:                                              ; preds = %74
  %136 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %137 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %135
  %139 = load i32, i32* @DUMP_BYTES_PER_LINE, align 4
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %8, align 4
  br label %9

142:                                              ; preds = %9
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
