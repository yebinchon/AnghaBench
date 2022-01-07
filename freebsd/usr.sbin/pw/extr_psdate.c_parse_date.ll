; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_psdate.c_parse_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_psdate.c_parse_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"(+-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parse_date(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i64 @time(i32* null)
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %14, %2
  br label %17

17:                                               ; preds = %29, %16
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isspace(i8 zeroext %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  br label %17

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @numerics(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @strtol(i8* %37, i8** %5, i32 0)
  store i64 %38, i64* %3, align 8
  br label %181

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 43
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %120

49:                                               ; preds = %44, %39
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @strtol(i8* %50, i8** %5, i32 0)
  store i64 %51, i64* %7, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  switch i32 %54, label %118 [
    i32 104, label %55
    i32 72, label %55
    i32 0, label %60
    i32 109, label %60
    i32 77, label %60
    i32 115, label %65
    i32 83, label %65
    i32 100, label %69
    i32 68, label %69
    i32 119, label %74
    i32 87, label %74
    i32 111, label %79
    i32 79, label %79
    i32 121, label %90
    i32 89, label %90
  ]

55:                                               ; preds = %49, %49
  %56 = load i64, i64* %7, align 8
  %57 = mul nsw i64 %56, 3600
  %58 = load i64, i64* %3, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %3, align 8
  br label %119

60:                                               ; preds = %49, %49, %49
  %61 = load i64, i64* %7, align 8
  %62 = mul nsw i64 %61, 60
  %63 = load i64, i64* %3, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %3, align 8
  br label %119

65:                                               ; preds = %49, %49
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %3, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %3, align 8
  br label %119

69:                                               ; preds = %49, %49
  %70 = load i64, i64* %7, align 8
  %71 = mul nsw i64 %70, 86400
  %72 = load i64, i64* %3, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %3, align 8
  br label %119

74:                                               ; preds = %49, %49
  %75 = load i64, i64* %7, align 8
  %76 = mul nsw i64 %75, 604800
  %77 = load i64, i64* %3, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %3, align 8
  br label %119

79:                                               ; preds = %49, %49
  %80 = call %struct.tm* @localtime(i64* %3)
  store %struct.tm* %80, %struct.tm** %8, align 8
  %81 = load i64, i64* %7, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.tm*, %struct.tm** %8, align 8
  %84 = getelementptr inbounds %struct.tm, %struct.tm* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.tm*, %struct.tm** %8, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %6, align 4
  br label %101

90:                                               ; preds = %49, %49
  %91 = call %struct.tm* @localtime(i64* %3)
  store %struct.tm* %91, %struct.tm** %8, align 8
  %92 = load i64, i64* %7, align 8
  %93 = trunc i64 %92 to i32
  %94 = load %struct.tm*, %struct.tm** %8, align 8
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.tm*, %struct.tm** %8, align 8
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %90, %79
  %102 = load %struct.tm*, %struct.tm** %8, align 8
  %103 = call i64 @mktime(%struct.tm* %102)
  store i64 %103, i64* %3, align 8
  %104 = call %struct.tm* @localtime(i64* %3)
  store %struct.tm* %104, %struct.tm** %8, align 8
  %105 = load %struct.tm*, %struct.tm** %8, align 8
  %106 = getelementptr inbounds %struct.tm, %struct.tm* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = load %struct.tm*, %struct.tm** %8, align 8
  %112 = getelementptr inbounds %struct.tm, %struct.tm* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load %struct.tm*, %struct.tm** %8, align 8
  %114 = call i64 @mktime(%struct.tm* %113)
  store i64 %114, i64* %3, align 8
  %115 = load i64, i64* %3, align 8
  %116 = sub nsw i64 %115, 86400
  store i64 %116, i64* %3, align 8
  br label %117

117:                                              ; preds = %110, %101
  br label %118

118:                                              ; preds = %49, %117
  br label %119

119:                                              ; preds = %118, %74, %69, %65, %60, %55
  br label %180

120:                                              ; preds = %44
  %121 = call i32 @weekday(i8** %4)
  %122 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 @strlcpy(i8* %122, i8* %123, i32 64)
  %125 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8* %125, i8** %4, align 8
  %126 = call %struct.tm* @localtime(i64* %3)
  store %struct.tm* %126, %struct.tm** %8, align 8
  br label %127

127:                                              ; preds = %173, %120
  %128 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %129 = call i8* @strrchr(i8* %128, i8 signext 32)
  store i8* %129, i8** %9, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %174

131:                                              ; preds = %127
  %132 = load i8*, i8** %9, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = call i32* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %134)
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i8*, i8** %9, align 8
  store i8 0, i8* %138, align 1
  br label %173

139:                                              ; preds = %131
  store i32 1, i32* %11, align 4
  br label %140

140:                                              ; preds = %158, %139
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %140
  %149 = load i8*, i8** %9, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = call i64 @isupper(i8 zeroext %153)
  %155 = icmp ne i64 %154, 0
  br label %156

156:                                              ; preds = %148, %140
  %157 = phi i1 [ false, %140 ], [ %155, %148 ]
  br i1 %157, label %158, label %161

158:                                              ; preds = %156
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %140

161:                                              ; preds = %156
  %162 = load i8*, i8** %9, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = load i8*, i8** %9, align 8
  store i8 0, i8* %170, align 1
  br label %172

171:                                              ; preds = %161
  br label %174

172:                                              ; preds = %169
  br label %173

173:                                              ; preds = %172, %137
  br label %127

174:                                              ; preds = %171, %127
  %175 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %176 = load %struct.tm*, %struct.tm** %8, align 8
  %177 = call i32 @parse_datesub(i8* %175, %struct.tm* %176)
  %178 = load %struct.tm*, %struct.tm** %8, align 8
  %179 = call i64 @mktime(%struct.tm* %178)
  store i64 %179, i64* %3, align 8
  br label %180

180:                                              ; preds = %174, %119
  br label %181

181:                                              ; preds = %180, %36
  %182 = load i64, i64* %3, align 8
  ret i64 %182
}

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @numerics(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local i32 @weekday(i8**) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isupper(i8 zeroext) #1

declare dso_local i32 @parse_datesub(i8*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
