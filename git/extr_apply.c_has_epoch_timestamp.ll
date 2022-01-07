; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_has_epoch_timestamp.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_has_epoch_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@__const.has_epoch_timestamp.stamp_regexp = private unnamed_addr constant [65 x i8] c"^[0-2][0-9]:([0-5][0-9]):00(\\.0+)? ([-+][0-2][0-9]:?[0-5][0-9])\0A\00", align 16
@has_epoch_timestamp.stamp = internal global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"1969-12-31 \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"1970-01-01 \00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Cannot prepare timestamp regexp %s\00", align 1
@REG_NOMATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"regexec returned %d for input: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @has_epoch_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_epoch_timestamp(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [65 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [10 x %struct.TYPE_4__], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = bitcast [65 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([65 x i8], [65 x i8]* @__const.has_epoch_timestamp.stamp_regexp, i32 0, i32 0), i64 65, i1 false)
  store i8* null, i8** %5, align 8
  %15 = load i8*, i8** %3, align 8
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %30, %1
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 10
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  br label %16

33:                                               ; preds = %16
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %143

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @skip_prefix(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %5)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 24, i32* %10, align 4
  br label %49

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @skip_prefix(i8* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %48

47:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %143

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32*, i32** @has_epoch_timestamp.stamp, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = call i32* @xmalloc(i32 4)
  store i32* %53, i32** @has_epoch_timestamp.stamp, align 8
  %54 = load i32*, i32** @has_epoch_timestamp.stamp, align 8
  %55 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 0
  %56 = load i32, i32* @REG_EXTENDED, align 4
  %57 = call i64 @regcomp(i32* %54, i8* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %61 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 0
  %62 = call i32 (i32, ...) @warning(i32 %60, i8* %61)
  store i32 0, i32* %2, align 4
  br label %143

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i32*, i32** @has_epoch_timestamp.stamp, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %68 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %67)
  %69 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %70 = call i32 @regexec(i32* %65, i8* %66, i32 %68, %struct.TYPE_4__* %69, i32 0)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %64
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @REG_NOMATCH, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* %13, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 (i32, ...) @warning(i32 %78, i32 %79, i8* %80)
  br label %82

82:                                               ; preds = %77, %73
  store i32 0, i32* %2, align 4
  br label %143

83:                                               ; preds = %64
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @strtol(i8* %84, i8** null, i32 10)
  store i32 %85, i32* %11, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %8, i64 0, i64 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  %92 = call i32 @strtol(i8* %91, i8** null, i32 10)
  store i32 %92, i32* %12, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %8, i64 0, i64 3
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %93, i64 %97
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = call i32 @strtol(i8* %99, i8** %7, i32 10)
  store i32 %100, i32* %9, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 58
  br i1 %104, label %105, label %112

105:                                              ; preds = %83
  %106 = load i32, i32* %9, align 4
  %107 = mul nsw i32 %106, 60
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = call i32 @strtol(i8* %109, i8** null, i32 10)
  %111 = add nsw i32 %107, %110
  store i32 %111, i32* %9, align 4
  br label %119

112:                                              ; preds = %83
  %113 = load i32, i32* %9, align 4
  %114 = sdiv i32 %113, 100
  %115 = mul nsw i32 %114, 60
  %116 = load i32, i32* %9, align 4
  %117 = srem i32 %116, 100
  %118 = add nsw i32 %115, %117
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %112, %105
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* %8, i64 0, i64 3
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 45
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load i32, i32* %9, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %129, %119
  %133 = load i32, i32* %11, align 4
  %134 = mul nsw i32 %133, 60
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %9, align 4
  %138 = sub nsw i32 %136, %137
  %139 = load i32, i32* %10, align 4
  %140 = mul nsw i32 %139, 60
  %141 = icmp eq i32 %138, %140
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %132, %82, %59, %47, %36
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32* @xmalloc(i32) #2

declare dso_local i64 @regcomp(i32*, i8*, i32) #2

declare dso_local i32 @warning(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @regexec(i32*, i8*, i32, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #2

declare dso_local i32 @strtol(i8*, i8**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
