; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_match_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_match_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_CONTEXT_SIZE = common dso_local global i32 0, align 4
@lastline = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"private:\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" (private)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"protected:\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" (protected)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"public:\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" (public)\00", align 1
@lastbuf = common dso_local global i8* null, align 8
@lastmatchline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*, i32, i32*)* @match_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @match_function(i64* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @FUNCTION_CONTEXT_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @lastline, align 4
  store i32 %18, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* @lastline, align 4
  br label %20

20:                                               ; preds = %115, %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %118

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @SEEK_SET, align 4
  %33 = call i32 @fseek(i32* %25, i64 %31, i32 %32)
  %34 = load i64*, i64** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %38, %44
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp uge i64 %46, %15
  br i1 %47, label %48, label %50

48:                                               ; preds = %24
  %49 = sub i64 %15, 1
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %48, %24
  %51 = load i64, i64* %10, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i64 @fread(i8* %17, i32 1, i64 %51, i32* %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ugt i64 %54, 0
  br i1 %55, label %56, label %115

56:                                               ; preds = %50
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i8, i8* %17, i64 %57
  store i8 0, i8* %58, align 1
  %59 = call i64 @strcspn(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %60 = getelementptr inbounds i8, i8* %17, i64 %59
  store i8 0, i8* %60, align 1
  %61 = getelementptr inbounds i8, i8* %17, i64 0
  %62 = load i8, i8* %61, align 16
  %63 = call i64 @isalpha(i8 zeroext %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds i8, i8* %17, i64 0
  %67 = load i8, i8* %66, align 16
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 95
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds i8, i8* %17, i64 0
  %72 = load i8, i8* %71, align 16
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 36
  br i1 %74, label %75, label %114

75:                                               ; preds = %70, %65, %56
  %76 = call i64 @begins_with(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i8*, i8** %12, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %82

82:                                               ; preds = %81, %78
  br label %113

83:                                               ; preds = %75
  %84 = call i64 @begins_with(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %90

90:                                               ; preds = %89, %86
  br label %112

91:                                               ; preds = %83
  %92 = call i64 @begins_with(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i8*, i8** %12, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %98

98:                                               ; preds = %97, %94
  br label %111

99:                                               ; preds = %91
  %100 = load i8*, i8** @lastbuf, align 8
  %101 = call i32 @strlcpy(i8* %100, i8* %17, i32 8)
  %102 = load i8*, i8** %12, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i8*, i8** @lastbuf, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = call i32 @strlcat(i8* %105, i8* %106, i32 8)
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* @lastmatchline, align 4
  %110 = load i8*, i8** @lastbuf, align 8
  store i8* %110, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %126

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111, %90
  br label %113

113:                                              ; preds = %112, %82
  br label %114

114:                                              ; preds = %113, %70
  br label %115

115:                                              ; preds = %114, %50
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %6, align 4
  br label %20

118:                                              ; preds = %20
  %119 = load i32, i32* @lastmatchline, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i8*, i8** @lastbuf, align 8
  br label %124

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i8* [ %122, %121 ], [ null, %123 ]
  store i8* %125, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %126

126:                                              ; preds = %124, %108
  %127 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i8*, i8** %4, align 8
  ret i8* %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fseek(i32*, i64, i32) #2

declare dso_local i64 @fread(i8*, i32, i64, i32*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i64 @isalpha(i8 zeroext) #2

declare dso_local i64 @begins_with(i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
