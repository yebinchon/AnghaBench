; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_branch.c_print_ref_list.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_branch.c_print_ref_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.ref_filter = type { i32, i64 }
%struct.ref_sorting = type { i32 }
%struct.ref_format = type { i8*, i32 }
%struct.ref_array = type { i32, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FILTER_REFS_REMOTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"remotes/\00", align 1
@FILTER_REFS_INCLUDE_BROKEN = common dso_local global i32 0, align 4
@branch_use_color = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to parse format string\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@colopts = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"--column and --verbose are incompatible\00", align 1
@output = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref_filter*, %struct.ref_sorting*, %struct.ref_format*)* @print_ref_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ref_list(%struct.ref_filter* %0, %struct.ref_sorting* %1, %struct.ref_format* %2) #0 {
  %4 = alloca %struct.ref_filter*, align 8
  %5 = alloca %struct.ref_sorting*, align 8
  %6 = alloca %struct.ref_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref_array, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca %struct.strbuf, align 4
  store %struct.ref_filter* %0, %struct.ref_filter** %4, align 8
  store %struct.ref_sorting* %1, %struct.ref_sorting** %5, align 8
  store %struct.ref_format* %2, %struct.ref_format** %6, align 8
  store i32 0, i32* %9, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i8* null, i8** %11, align 8
  %14 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %15 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FILTER_REFS_REMOTES, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %20

20:                                               ; preds = %19, %3
  %21 = call i32 @memset(%struct.ref_array* %8, i32 0, i32 16)
  %22 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %23 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %24 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FILTER_REFS_INCLUDE_BROKEN, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @filter_refs(%struct.ref_array* %8, %struct.ref_filter* %22, i32 %27)
  %29 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %30 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i32 @calc_maxwidth(%struct.ref_array* %8, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %33, %20
  %38 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %39 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = call i8* @build_format(%struct.ref_filter* %43, i32 %44, i8* %45)
  store i8* %46, i8** %11, align 8
  %47 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %48 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* @branch_use_color, align 4
  %51 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %52 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %54 = call i64 @verify_ref_format(%struct.ref_format* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 (i8*, ...) @die(i8* %59)
  br label %61

61:                                               ; preds = %56, %49
  %62 = load %struct.ref_sorting*, %struct.ref_sorting** %5, align 8
  %63 = call i32 @ref_array_sort(%struct.ref_sorting* %62, %struct.ref_array* %8)
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %113, %61
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %116

69:                                               ; preds = %64
  %70 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %71 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %72 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %8, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %79 = call i64 @format_ref_array_item(i32 %77, %struct.ref_format* %78, %struct.strbuf* %12, %struct.strbuf* %13)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %69
  %86 = load i32, i32* @colopts, align 4
  %87 = call i64 @column_active(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %91 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %89
  %96 = phi i1 [ false, %89 ], [ true, %94 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @string_list_append(i32* @output, i32 %100)
  br label %110

102:                                              ; preds = %85
  %103 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @stdout, align 4
  %108 = call i32 @fwrite(i32 %104, i32 1, i32 %106, i32 %107)
  %109 = call i32 @putchar(i8 signext 10)
  br label %110

110:                                              ; preds = %102, %95
  %111 = call i32 @strbuf_release(%struct.strbuf* %13)
  %112 = call i32 @strbuf_release(%struct.strbuf* %12)
  br label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %64

116:                                              ; preds = %64
  %117 = call i32 @ref_array_clear(%struct.ref_array* %8)
  %118 = load i8*, i8** %11, align 8
  %119 = call i32 @free(i8* %118)
  ret void
}

declare dso_local i32 @memset(%struct.ref_array*, i32, i32) #1

declare dso_local i32 @filter_refs(%struct.ref_array*, %struct.ref_filter*, i32) #1

declare dso_local i32 @calc_maxwidth(%struct.ref_array*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @build_format(%struct.ref_filter*, i32, i8*) #1

declare dso_local i64 @verify_ref_format(%struct.ref_format*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ref_array_sort(%struct.ref_sorting*, %struct.ref_array*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @format_ref_array_item(i32, %struct.ref_format*, %struct.strbuf*, %struct.strbuf*) #1

declare dso_local i64 @column_active(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @string_list_append(i32*, i32) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @ref_array_clear(%struct.ref_array*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
