; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_detect_patch_format.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_detect_patch_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }

@PATCH_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@PATCH_FORMAT_MBOX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"From: \00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"# This series applies on GIT commit\00", align 1
@PATCH_FORMAT_STGIT_SERIES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"# HG changeset patch\00", align 1
@PATCH_FORMAT_HG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"From:\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Author:\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Date:\00", align 1
@PATCH_FORMAT_STGIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @detect_patch_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_patch_format(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i32*, align 8
  store i8** %0, i8*** %3, align 8
  %9 = load i32, i32* @PATCH_FORMAT_UNKNOWN, align 4
  store i32 %9, i32* %4, align 4
  %10 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %11 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %12 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %13 = load i8**, i8*** %3, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load i8**, i8*** %3, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8**, i8*** %3, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @is_directory(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %16, %1
  %27 = load i32, i32* @PATCH_FORMAT_MBOX, align 4
  store i32 %27, i32* %2, align 4
  br label %116

28:                                               ; preds = %21
  %29 = load i8**, i8*** %3, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32* @xfopen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %8, align 8
  br label %32

32:                                               ; preds = %42, %28
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @strbuf_getline(%struct.strbuf* %5, i32* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %43

42:                                               ; preds = %37
  br label %32

43:                                               ; preds = %41, %32
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @starts_with(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @starts_with(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @PATCH_FORMAT_MBOX, align 4
  store i32 %54, i32* %4, align 4
  br label %109

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @starts_with(i8* %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @PATCH_FORMAT_STGIT_SERIES, align 4
  store i32 %61, i32* %4, align 4
  br label %109

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @PATCH_FORMAT_HG, align 4
  store i32 %68, i32* %4, align 4
  br label %109

69:                                               ; preds = %62
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @strbuf_getline(%struct.strbuf* %6, i32* %70)
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @strbuf_getline(%struct.strbuf* %7, i32* %72)
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @starts_with(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @starts_with(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @starts_with(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %86, %81
  %97 = load i32, i32* @PATCH_FORMAT_STGIT, align 4
  store i32 %97, i32* %4, align 4
  br label %109

98:                                               ; preds = %91, %77, %69
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32*, i32** %8, align 8
  %104 = call i64 @is_mail(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @PATCH_FORMAT_MBOX, align 4
  store i32 %107, i32* %4, align 4
  br label %109

108:                                              ; preds = %102, %98
  br label %109

109:                                              ; preds = %108, %106, %96, %67, %60, %53
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @fclose(i32* %110)
  %112 = call i32 @strbuf_release(%struct.strbuf* %5)
  %113 = call i32 @strbuf_release(%struct.strbuf* %6)
  %114 = call i32 @strbuf_release(%struct.strbuf* %7)
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %109, %26
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @is_directory(i8*) #2

declare dso_local i32* @xfopen(i8*, i8*) #2

declare dso_local i32 @strbuf_getline(%struct.strbuf*, i32*) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i64 @is_mail(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
