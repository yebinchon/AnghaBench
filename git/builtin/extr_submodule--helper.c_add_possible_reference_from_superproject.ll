; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_add_possible_reference_from_superproject.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_add_possible_reference_from_superproject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_directory = type { i32 }
%struct.submodule_alternate_setup = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"/objects\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"/modules/%s/\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"submodule '%s' cannot add alternate: %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_directory*, i8*)* @add_possible_reference_from_superproject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_possible_reference_from_superproject(%struct.object_directory* %0, i8* %1) #0 {
  %3 = alloca %struct.object_directory*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.submodule_alternate_setup*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca %struct.strbuf, align 4
  store %struct.object_directory* %0, %struct.object_directory** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.submodule_alternate_setup*
  store %struct.submodule_alternate_setup* %11, %struct.submodule_alternate_setup** %5, align 8
  %12 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %13 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strip_suffix(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %2
  %18 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %19 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %20 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %21 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @strbuf_add(%struct.strbuf* %8, i32 %22, i64 %23)
  %25 = load %struct.submodule_alternate_setup*, %struct.submodule_alternate_setup** %5, align 8
  %26 = getelementptr inbounds %struct.submodule_alternate_setup, %struct.submodule_alternate_setup* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @compute_alternate_path(i32 %30, %struct.strbuf* %9)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %17
  %35 = load %struct.submodule_alternate_setup*, %struct.submodule_alternate_setup** %5, align 8
  %36 = getelementptr inbounds %struct.submodule_alternate_setup, %struct.submodule_alternate_setup* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @xstrdup(i32 %39)
  %41 = call i32 @string_list_append(i32 %37, i32 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @free(i8* %42)
  br label %67

44:                                               ; preds = %17
  %45 = load %struct.submodule_alternate_setup*, %struct.submodule_alternate_setup** %5, align 8
  %46 = getelementptr inbounds %struct.submodule_alternate_setup, %struct.submodule_alternate_setup* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %66 [
    i32 130, label %48
    i32 128, label %56
    i32 129, label %65
  ]

48:                                               ; preds = %44
  %49 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.submodule_alternate_setup*, %struct.submodule_alternate_setup** %5, align 8
  %51 = getelementptr inbounds %struct.submodule_alternate_setup, %struct.submodule_alternate_setup* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @die(i32 %49, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %44, %48
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.submodule_alternate_setup*, %struct.submodule_alternate_setup** %5, align 8
  %60 = getelementptr inbounds %struct.submodule_alternate_setup, %struct.submodule_alternate_setup* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @fprintf_ln(i32 %57, i32 %58, i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %44, %56
  br label %66

66:                                               ; preds = %65, %44
  br label %67

67:                                               ; preds = %66, %34
  %68 = call i32 @strbuf_release(%struct.strbuf* %8)
  br label %69

69:                                               ; preds = %67, %2
  ret i32 0
}

declare dso_local i64 @strip_suffix(i32, i8*, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i32, i64) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i8* @compute_alternate_path(i32, %struct.strbuf*) #1

declare dso_local i32 @string_list_append(i32, i32) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @die(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @fprintf_ln(i32, i32, i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
