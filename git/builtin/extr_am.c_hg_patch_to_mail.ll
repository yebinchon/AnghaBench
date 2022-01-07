; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_hg_patch_to_mail.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_hg_patch_to_mail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"# User \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"From: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"# Date \00", align 1
@errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"invalid timestamp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"invalid Date line\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"invalid timezone offset\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Date: %s\0A\00", align 1
@RFC2822 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @hg_patch_to_mail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hg_patch_to_mail(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %100, %93, %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @strbuf_getline_lf(%struct.strbuf* %7, i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %101

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @skip_prefix(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @fprintf(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %100

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @skip_prefix(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %9)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %88

34:                                               ; preds = %29
  store i64 0, i64* @errno, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @parse_timestamp(i8* %35, i8** %13, i32 10)
  store i32 %36, i32* %10, align 4
  %37 = load i64, i64* @errno, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 @error(i32 %40)
  store i32 %41, i32* %8, align 4
  br label %116

42:                                               ; preds = %34
  %43 = load i8*, i8** %13, align 8
  %44 = call i64 @skip_prefix(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %9)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %48 = call i32 @error(i32 %47)
  store i32 %48, i32* %8, align 4
  br label %116

49:                                               ; preds = %42
  store i64 0, i64* @errno, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @strtol(i8* %50, i8** %13, i32 10)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* @errno, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %56 = call i32 @error(i32 %55)
  store i32 %56, i32* %8, align 4
  br label %116

57:                                               ; preds = %49
  %58 = load i8*, i8** %13, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %63 = call i32 @error(i32 %62)
  store i32 %63, i32* %8, align 4
  br label %116

64:                                               ; preds = %57
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @labs(i64 %65)
  %67 = sdiv i32 %66, 3600
  %68 = mul nsw i32 %67, 100
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @labs(i64 %69)
  %71 = srem i32 %70, 3600
  %72 = sdiv i32 %71, 60
  %73 = add nsw i32 %68, %72
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %11, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load i64, i64* %12, align 8
  %79 = sub nsw i64 0, %78
  store i64 %79, i64* %12, align 8
  br label %80

80:                                               ; preds = %77, %64
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i64, i64* %12, align 8
  %84 = load i32, i32* @RFC2822, align 4
  %85 = call i32 @DATE_MODE(i32 %84)
  %86 = call i8* @show_date(i32 %82, i64 %83, i32 %85)
  %87 = call i32 @fprintf(i32* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %86)
  br label %99

88:                                               ; preds = %29
  %89 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @starts_with(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %15

94:                                               ; preds = %88
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @fprintf(i32* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %97)
  br label %101

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99, %25
  br label %15

101:                                              ; preds = %94, %15
  %102 = call i32 @strbuf_reset(%struct.strbuf* %7)
  br label %103

103:                                              ; preds = %107, %101
  %104 = load i32*, i32** %5, align 8
  %105 = call i64 @strbuf_fread(%struct.strbuf* %7, i32 8192, i32* %104)
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @fwrite(i8* %109, i32 1, i32 %111, i32* %112)
  %114 = call i32 @strbuf_reset(%struct.strbuf* %7)
  br label %103

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %61, %54, %46, %39
  %117 = call i32 @strbuf_release(%struct.strbuf* %7)
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_getline_lf(%struct.strbuf*, i32*) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

declare dso_local i32 @parse_timestamp(i8*, i8**, i32) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @labs(i64) #2

declare dso_local i8* @show_date(i32, i64, i32) #2

declare dso_local i32 @DATE_MODE(i32) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @strbuf_fread(%struct.strbuf*, i32, i32*) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
