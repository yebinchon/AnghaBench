; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_dump_unified_vec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_dump_unified_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context_vec = type { i32, i32, i32, i32 }

@context_vec_start = common dso_local global %struct.context_vec* null, align 8
@context_vec_ptr = common dso_local global %struct.context_vec* null, align 8
@diff_context = common dso_local global i64 0, align 8
@len = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"@@ -\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" @@\00", align 1
@D_PROTOTYPE = common dso_local global i32 0, align 4
@ixold = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ixnew = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @dump_unified_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_unified_vec(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.context_vec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.context_vec*, %struct.context_vec** @context_vec_start, align 8
  store %struct.context_vec* %18, %struct.context_vec** %7, align 8
  %19 = load %struct.context_vec*, %struct.context_vec** @context_vec_start, align 8
  %20 = load %struct.context_vec*, %struct.context_vec** @context_vec_ptr, align 8
  %21 = icmp ugt %struct.context_vec* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %186

23:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.context_vec*, %struct.context_vec** %7, align 8
  %25 = getelementptr inbounds %struct.context_vec, %struct.context_vec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @diff_context, align 8
  %29 = sub nsw i64 %27, %28
  %30 = call i32 @MAX(i32 1, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** @len, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.context_vec*, %struct.context_vec** @context_vec_ptr, align 8
  %35 = getelementptr inbounds %struct.context_vec, %struct.context_vec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @diff_context, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @MIN(i32 %33, i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.context_vec*, %struct.context_vec** %7, align 8
  %42 = getelementptr inbounds %struct.context_vec, %struct.context_vec* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @diff_context, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call i32 @MAX(i32 1, i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** @len, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.context_vec*, %struct.context_vec** @context_vec_ptr, align 8
  %52 = getelementptr inbounds %struct.context_vec, %struct.context_vec* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @diff_context, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @MIN(i32 %50, i64 %56)
  store i32 %57, i32* %11, align 4
  %58 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @uni_range(i32 %59, i32 %60)
  %62 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @uni_range(i32 %63, i32 %64)
  %66 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @D_PROTOTYPE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %23
  %72 = load i32, i32* @ixold, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32*, i32** %4, align 8
  %76 = call i8* @match_function(i32 %72, i32 %74, i32* %75)
  store i8* %76, i8** %17, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i8*, i8** %17, align 8
  %81 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %79, %71
  br label %83

83:                                               ; preds = %82, %23
  %84 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %173, %83
  %86 = load %struct.context_vec*, %struct.context_vec** %7, align 8
  %87 = load %struct.context_vec*, %struct.context_vec** @context_vec_ptr, align 8
  %88 = icmp ule %struct.context_vec* %86, %87
  br i1 %88, label %89, label %176

89:                                               ; preds = %85
  %90 = load %struct.context_vec*, %struct.context_vec** %7, align 8
  %91 = getelementptr inbounds %struct.context_vec, %struct.context_vec* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  %93 = load %struct.context_vec*, %struct.context_vec** %7, align 8
  %94 = getelementptr inbounds %struct.context_vec, %struct.context_vec* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %13, align 4
  %96 = load %struct.context_vec*, %struct.context_vec** %7, align 8
  %97 = getelementptr inbounds %struct.context_vec, %struct.context_vec* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %14, align 4
  %99 = load %struct.context_vec*, %struct.context_vec** %7, align 8
  %100 = getelementptr inbounds %struct.context_vec, %struct.context_vec* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %89
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i8 99, i8* %16, align 1
  br label %117

110:                                              ; preds = %105, %89
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp sle i32 %111, %112
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 100, i32 97
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %16, align 1
  br label %117

117:                                              ; preds = %110, %109
  %118 = load i8, i8* %16, align 1
  %119 = sext i8 %118 to i32
  switch i32 %119, label %168 [
    i32 99, label %120
    i32 100, label %140
    i32 97, label %154
  ]

120:                                              ; preds = %117
  %121 = load i32, i32* @ixold, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %12, align 4
  %124 = sub nsw i32 %123, 1
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @fetch(i32 %121, i32 %122, i32 %124, i32* %125, i8 signext 32, i32 0, i32 %126)
  %128 = load i32, i32* @ixold, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @fetch(i32 %128, i32 %129, i32 %130, i32* %131, i8 signext 45, i32 0, i32 %132)
  %134 = load i32, i32* @ixnew, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @fetch(i32 %134, i32 %135, i32 %136, i32* %137, i8 signext 43, i32 0, i32 %138)
  br label %168

140:                                              ; preds = %117
  %141 = load i32, i32* @ixold, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %12, align 4
  %144 = sub nsw i32 %143, 1
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @fetch(i32 %141, i32 %142, i32 %144, i32* %145, i8 signext 32, i32 0, i32 %146)
  %148 = load i32, i32* @ixold, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @fetch(i32 %148, i32 %149, i32 %150, i32* %151, i8 signext 45, i32 0, i32 %152)
  br label %168

154:                                              ; preds = %117
  %155 = load i32, i32* @ixnew, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %14, align 4
  %158 = sub nsw i32 %157, 1
  %159 = load i32*, i32** %5, align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @fetch(i32 %155, i32 %156, i32 %158, i32* %159, i8 signext 32, i32 0, i32 %160)
  %162 = load i32, i32* @ixnew, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @fetch(i32 %162, i32 %163, i32 %164, i32* %165, i8 signext 43, i32 0, i32 %166)
  br label %168

168:                                              ; preds = %117, %154, %140, %120
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %15, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %173

173:                                              ; preds = %168
  %174 = load %struct.context_vec*, %struct.context_vec** %7, align 8
  %175 = getelementptr inbounds %struct.context_vec, %struct.context_vec* %174, i32 1
  store %struct.context_vec* %175, %struct.context_vec** %7, align 8
  br label %85

176:                                              ; preds = %85
  %177 = load i32, i32* @ixnew, align 4
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  %180 = load i32, i32* %11, align 4
  %181 = load i32*, i32** %5, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @fetch(i32 %177, i32 %179, i32 %180, i32* %181, i8 signext 32, i32 0, i32 %182)
  %184 = load %struct.context_vec*, %struct.context_vec** @context_vec_start, align 8
  %185 = getelementptr inbounds %struct.context_vec, %struct.context_vec* %184, i64 -1
  store %struct.context_vec* %185, %struct.context_vec** @context_vec_ptr, align 8
  br label %186

186:                                              ; preds = %176, %22
  ret void
}

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @diff_output(i8*, ...) #1

declare dso_local i32 @uni_range(i32, i32) #1

declare dso_local i8* @match_function(i32, i32, i32*) #1

declare dso_local i32 @fetch(i32, i32, i32, i32*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
