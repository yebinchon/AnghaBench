; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_parse_signed_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_parse_signed_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.strbuf = type { i32 }

@gpg_sig_header = common dso_local global i32 0, align 4
@gpg_sig_header_len = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_signed_commit(%struct.commit* %0, %struct.strbuf* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %15 = load %struct.commit*, %struct.commit** %4, align 8
  %16 = call i8* @get_commit_buffer(%struct.commit* %15, i64* %7)
  store i8* %16, i8** %8, align 8
  store i32 -1, i32* %10, align 4
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %102, %3
  %22 = load i8*, i8** %11, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %104

25:                                               ; preds = %21
  store i8* null, i8** %13, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = call i8* @memchr(i8* %26, i8 signext 10, i32 %32)
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  br label %41

39:                                               ; preds = %25
  %40 = load i8*, i8** %12, align 8
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi i8* [ %38, %36 ], [ %40, %39 ]
  store i8* %42, i8** %14, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** %13, align 8
  br label %72

54:                                               ; preds = %45, %41
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* @gpg_sig_header, align 4
  %57 = call i64 @starts_with(i8* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i8*, i8** %11, align 8
  %61 = load i64, i64* @gpg_sig_header_len, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 32
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i8*, i8** %11, align 8
  %68 = load i64, i64* @gpg_sig_header_len, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %13, align 8
  br label %71

71:                                               ; preds = %66, %59, %54
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i8*, i8** %13, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @strbuf_add(%struct.strbuf* %76, i8* %77, i32 %83)
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %102

85:                                               ; preds = %72
  %86 = load i8*, i8** %11, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i8*, i8** %12, align 8
  store i8* %91, i8** %14, align 8
  br label %92

92:                                               ; preds = %90, %85
  %93 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = call i32 @strbuf_add(%struct.strbuf* %93, i8* %94, i32 %100)
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %92, %75
  %103 = load i8*, i8** %14, align 8
  store i8* %103, i8** %11, align 8
  br label %21

104:                                              ; preds = %21
  %105 = load %struct.commit*, %struct.commit** %4, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @unuse_commit_buffer(%struct.commit* %105, i8* %106)
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

declare dso_local i8* @get_commit_buffer(%struct.commit*, i64*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @starts_with(i8*, i32) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
