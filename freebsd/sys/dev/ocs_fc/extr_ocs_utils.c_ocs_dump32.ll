; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_dump32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_dump32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%08X:  \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%08X \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%8s \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocs_dump32(i32 %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [200 x i8], align 16
  %19 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %11, align 4
  store i32 8, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %24 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  store i8* %24, i8** %19, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ocs_debug_is_enabled(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  br label %195

29:                                               ; preds = %5
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @ocs_log_debug(i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i8*, i8** %9, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %15, align 8
  br label %39

39:                                               ; preds = %165, %36
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %195

42:                                               ; preds = %39
  %43 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  store i8* %43, i8** %19, align 8
  %44 = load i8*, i8** %19, align 8
  %45 = load i8*, i8** %19, align 8
  %46 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sub i64 200, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %17, align 4
  %53 = call i32 (i8*, i32, i8*, ...) @ocs_snprintf(i8* %44, i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i8*, i8** %19, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %19, align 8
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %42
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %61, %42
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %86, %63
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %64
  %69 = load i8*, i8** %19, align 8
  %70 = load i8*, i8** %19, align 8
  %71 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sub i64 200, %74
  %76 = trunc i64 %75 to i32
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, i8*, ...) @ocs_snprintf(i8* %69, i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i8*, i8** %19, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %19, align 8
  br label %86

86:                                               ; preds = %68
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %64

89:                                               ; preds = %64
  br label %90

90:                                               ; preds = %107, %89
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load i8*, i8** %19, align 8
  %96 = load i8*, i8** %19, align 8
  %97 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sub i64 200, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 (i8*, i32, i8*, ...) @ocs_snprintf(i8* %95, i32 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i8*, i8** %19, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %19, align 8
  br label %107

107:                                              ; preds = %94
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %90

110:                                              ; preds = %90
  %111 = load i8*, i8** %19, align 8
  %112 = load i8*, i8** %19, align 8
  %113 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sub i64 200, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 (i8*, i32, i8*, ...) @ocs_snprintf(i8* %111, i32 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i8*, i8** %19, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %19, align 8
  %123 = load i32*, i32** %15, align 8
  %124 = bitcast i32* %123 to i8*
  store i8* %124, i8** %16, align 8
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %162, %110
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = icmp ult i64 %127, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %125
  %133 = load i8*, i8** %19, align 8
  %134 = load i8*, i8** %19, align 8
  %135 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = sub i64 200, %138
  %140 = trunc i64 %139 to i32
  %141 = load i8*, i8** %16, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = call i64 @_isprint(i8 signext %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %132
  %149 = load i8*, i8** %16, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  br label %156

155:                                              ; preds = %132
  br label %156

156:                                              ; preds = %155, %148
  %157 = phi i32 [ %154, %148 ], [ 46, %155 ]
  %158 = call i32 (i8*, i32, i8*, ...) @ocs_snprintf(i8* %133, i32 %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  %159 = load i8*, i8** %19, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %19, align 8
  br label %162

162:                                              ; preds = %156
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %125

165:                                              ; preds = %125
  %166 = load i8*, i8** %19, align 8
  %167 = load i8*, i8** %19, align 8
  %168 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = sub i64 200, %171
  %173 = trunc i64 %172 to i32
  %174 = call i32 (i8*, i32, i8*, ...) @ocs_snprintf(i8* %166, i32 %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %175 = load i8*, i8** %19, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %19, align 8
  %178 = load i32, i32* %7, align 4
  %179 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  %180 = call i32 @ocs_log_debug(i32 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %179)
  %181 = load i32, i32* %14, align 4
  %182 = load i32*, i32** %15, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %15, align 8
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %11, align 4
  %187 = sub nsw i32 %186, %185
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = mul i64 %189, 4
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = add i64 %192, %190
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %17, align 4
  br label %39

195:                                              ; preds = %28, %39
  ret void
}

declare dso_local i32 @ocs_debug_is_enabled(i32) #1

declare dso_local i32 @ocs_log_debug(i32, i8*, i8*) #1

declare dso_local i32 @ocs_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @_isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
