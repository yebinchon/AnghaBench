; ModuleID = '/home/carl/AnghaBench/git/extr_archive.c_object_file_to_archive.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive.c_object_file_to_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.archiver_args = type { %struct.TYPE_2__*, i32, %struct.commit*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.commit = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @object_file_to_archive(%struct.archiver_args* %0, i8* %1, %struct.object_id* %2, i32 %3, i32* %4, i64* %5) #0 {
  %7 = alloca %struct.archiver_args*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.commit*, align 8
  %15 = alloca %struct.strbuf, align 4
  %16 = alloca i64, align 8
  store %struct.archiver_args* %0, %struct.archiver_args** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.object_id* %2, %struct.object_id** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  %17 = load %struct.archiver_args*, %struct.archiver_args** %7, align 8
  %18 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load %struct.archiver_args*, %struct.archiver_args** %7, align 8
  %23 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %22, i32 0, i32 2
  %24 = load %struct.commit*, %struct.commit** %23, align 8
  br label %26

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi %struct.commit* [ %24, %21 ], [ null, %25 ]
  store %struct.commit* %27, %struct.commit** %14, align 8
  %28 = load %struct.archiver_args*, %struct.archiver_args** %7, align 8
  %29 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %8, align 8
  %34 = load %struct.object_id*, %struct.object_id** %9, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i64*, i64** %12, align 8
  %37 = call i8* @read_object_file(%struct.object_id* %34, i32* %35, i64* %36)
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %77

40:                                               ; preds = %26
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @S_ISREG(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %40
  %45 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i64 0, i64* %16, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i64*, i64** %12, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  %52 = call i32 @strbuf_attach(%struct.strbuf* %15, i8* %46, i64 %48, i64 %51)
  %53 = load %struct.archiver_args*, %struct.archiver_args** %7, align 8
  %54 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @convert_to_working_tree(i32 %57, i8* %58, i32 %60, i32 %62, %struct.strbuf* %15)
  %64 = load %struct.commit*, %struct.commit** %14, align 8
  %65 = icmp ne %struct.commit* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %44
  %67 = load %struct.commit*, %struct.commit** %14, align 8
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @format_subst(%struct.commit* %67, i32 %69, i32 %71, %struct.strbuf* %15)
  br label %73

73:                                               ; preds = %66, %44
  %74 = call i8* @strbuf_detach(%struct.strbuf* %15, i64* %16)
  store i8* %74, i8** %13, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load i64*, i64** %12, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %40, %26
  %78 = load i8*, i8** %13, align 8
  ret i8* %78
}

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i64 @S_ISREG(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_attach(%struct.strbuf*, i8*, i64, i64) #1

declare dso_local i32 @convert_to_working_tree(i32, i8*, i32, i32, %struct.strbuf*) #1

declare dso_local i32 @format_subst(%struct.commit*, i32, i32, %struct.strbuf*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
