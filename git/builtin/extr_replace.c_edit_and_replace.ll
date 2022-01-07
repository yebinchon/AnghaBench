; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_replace.c_edit_and_replace.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_replace.c_edit_and_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"not a valid object name: '%s'\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to get object type for %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"REPLACE_EDITOBJ\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"editing object file failed\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"new object is the same as the old one: '%s'\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"replacement\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @edit_and_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edit_and_replace(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca %struct.object_id, align 4
  %12 = alloca %struct.object_id, align 4
  %13 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @get_oid(i8* %15, %struct.object_id* %10)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i32, ...) @error(i32 %19, i8* %20)
  store i32 %21, i32* %4, align 4
  br label %79

22:                                               ; preds = %3
  %23 = load i32, i32* @the_repository, align 4
  %24 = call i32 @oid_object_info(i32 %23, %struct.object_id* %10, i32* null)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ult i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i8* @oid_to_hex(%struct.object_id* %10)
  %30 = call i32 (i32, ...) @error(i32 %28, i8* %29)
  store i32 %30, i32* %4, align 4
  br label %79

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @check_ref_valid(%struct.object_id* %10, %struct.object_id* %12, %struct.strbuf* %13, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @strbuf_release(%struct.strbuf* %13)
  store i32 -1, i32* %4, align 4
  br label %79

37:                                               ; preds = %31
  %38 = call i32 @strbuf_release(%struct.strbuf* %13)
  %39 = call i8* @git_pathdup(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %39, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @export_object(%struct.object_id* %10, i32 %40, i32 %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @free(i8* %46)
  store i32 -1, i32* %4, align 4
  br label %79

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @launch_editor(i8* %49, i32* null, i32* null)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @free(i8* %53)
  %55 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 (i32, ...) @error(i32 %55)
  store i32 %56, i32* %4, align 4
  br label %79

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = call i64 @import_object(%struct.object_id* %11, i32 %58, i32 %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @free(i8* %64)
  store i32 -1, i32* %4, align 4
  br label %79

66:                                               ; preds = %57
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @free(i8* %67)
  %69 = call i64 @oideq(%struct.object_id* %10, %struct.object_id* %11)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %73 = call i8* @oid_to_hex(%struct.object_id* %10)
  %74 = call i32 (i32, ...) @error(i32 %72, i8* %73)
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %66
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @replace_object_oid(i8* %76, %struct.object_id* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %struct.object_id* %11, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %71, %63, %52, %45, %35, %27, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @error(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i64 @check_ref_valid(%struct.object_id*, %struct.object_id*, %struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i8* @git_pathdup(i8*) #2

declare dso_local i64 @export_object(%struct.object_id*, i32, i32, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @launch_editor(i8*, i32*, i32*) #2

declare dso_local i64 @import_object(%struct.object_id*, i32, i32, i8*) #2

declare dso_local i64 @oideq(%struct.object_id*, %struct.object_id*) #2

declare dso_local i32 @replace_object_oid(i8*, %struct.object_id*, i8*, %struct.object_id*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
