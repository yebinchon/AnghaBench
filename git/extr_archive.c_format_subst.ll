; ModuleID = '/home/carl/AnghaBench/git/extr_archive.c_format_subst.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive.c_format_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.commit = type { i32 }
%struct.pretty_print_context = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@DATE_NORMAL = common dso_local global i32 0, align 4
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"$Format:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, i8*, i64, %struct.strbuf*)* @format_subst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_subst(%struct.commit* %0, i8* %1, i64 %2, %struct.strbuf* %3) #0 {
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.strbuf, align 8
  %11 = alloca %struct.pretty_print_context, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.commit* %0, %struct.commit** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.strbuf* %3, %struct.strbuf** %8, align 8
  store i8* null, i8** %9, align 8
  %14 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %15 = bitcast %struct.pretty_print_context* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 12, i1 false)
  %16 = load i32, i32* @DATE_NORMAL, align 4
  %17 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %11, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @DEFAULT_ABBREV, align 4
  %20 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %11, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %28 = call i8* @strbuf_detach(%struct.strbuf* %27, i32* null)
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %26, %4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i8* @memmem(i8* %31, i64 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %87

37:                                               ; preds = %30
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8*, i8** %12, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sub nsw i64 %46, 8
  %48 = trunc i64 %47 to i32
  %49 = call i8* @memchr(i8* %39, i8 signext 36, i32 %48)
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %37
  br label %87

53:                                               ; preds = %37
  %54 = call i32 @strbuf_reset(%struct.strbuf* %10)
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sub nsw i64 %61, 8
  %63 = call i32 @strbuf_add(%struct.strbuf* %10, i8* %56, i64 %62)
  %64 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = call i32 @strbuf_add(%struct.strbuf* %64, i8* %65, i64 %70)
  %72 = load %struct.commit*, %struct.commit** %5, align 8
  %73 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %76 = call i32 @format_commit_message(%struct.commit* %72, i8* %74, %struct.strbuf* %75, %struct.pretty_print_context* %11)
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8*, i8** %6, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = load i64, i64* %7, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* %7, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8* %86, i8** %6, align 8
  br label %30

87:                                               ; preds = %52, %36
  %88 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @strbuf_add(%struct.strbuf* %88, i8* %89, i64 %90)
  %92 = call i32 @strbuf_release(%struct.strbuf* %10)
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @free(i8* %93)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i8* @memmem(i8*, i64, i8*, i32) #2

declare dso_local i8* @memchr(i8*, i8 signext, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #2

declare dso_local i32 @format_commit_message(%struct.commit*, i8*, %struct.strbuf*, %struct.pretty_print_context*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
