; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_copy_notes_for_rebase.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_copy_notes_for_rebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.am_state = type { i32 }
%struct.notes_rewrite_cfg = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"Malformed input line: '%s'.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Notes added by 'git rebase'\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rebase\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"rewritten\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to copy notes from '%s' to '%s'\00", align 1
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.am_state*)* @copy_notes_for_rebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_notes_for_rebase(%struct.am_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.am_state*, align 8
  %4 = alloca %struct.notes_rewrite_cfg*, align 8
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca %struct.object_id, align 4
  %12 = alloca i8*, align 8
  store %struct.am_state* %0, %struct.am_state** %3, align 8
  %13 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %14 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.am_state*, %struct.am_state** %3, align 8
  %16 = getelementptr inbounds %struct.am_state, %struct.am_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @assert(i32 %17)
  %19 = call %struct.notes_rewrite_cfg* @init_copy_notes_for_rewrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.notes_rewrite_cfg* %19, %struct.notes_rewrite_cfg** %4, align 8
  %20 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %21 = icmp ne %struct.notes_rewrite_cfg* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %104

23:                                               ; preds = %1
  %24 = load %struct.am_state*, %struct.am_state** %3, align 8
  %25 = call i32 @am_path(%struct.am_state* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32* @xfopen(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %26, i32** %8, align 8
  br label %27

27:                                               ; preds = %93, %23
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @strbuf_getline_lf(%struct.strbuf* %5, i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %94

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 %38, 1
  %40 = icmp ne i32 %34, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 (i8*, i8*, ...) @error(i8* %42, i8* %46)
  store i32 %47, i32* %9, align 4
  br label %95

48:                                               ; preds = %32
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @parse_oid_hex(i32 %50, %struct.object_id* %10, i8** %12)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 (i8*, i8*, ...) @error(i8* %54, i8* %58)
  store i32 %59, i32* %9, align 4
  br label %95

60:                                               ; preds = %48
  %61 = load i8*, i8** %12, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 32
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 (i8*, i8*, ...) @error(i8* %66, i8* %70)
  store i32 %71, i32* %9, align 4
  br label %95

72:                                               ; preds = %60
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = call i64 @get_oid_hex(i8* %74, %struct.object_id* %11)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 (i8*, i8*, ...) @error(i8* %78, i8* %82)
  store i32 %83, i32* %9, align 4
  br label %95

84:                                               ; preds = %72
  %85 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %86 = call i64 @copy_note_for_rewrite(%struct.notes_rewrite_cfg* %85, %struct.object_id* %10, %struct.object_id* %11)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %90 = call i8* @oid_to_hex(%struct.object_id* %10)
  %91 = call i8* @oid_to_hex(%struct.object_id* %11)
  %92 = call i32 (i8*, i8*, ...) @error(i8* %89, i8* %90, i8* %91)
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %88, %84
  br label %27

94:                                               ; preds = %27
  br label %95

95:                                               ; preds = %94, %77, %65, %53, %41
  %96 = load i32, i32* @the_repository, align 4
  %97 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @finish_copy_notes_for_rewrite(i32 %96, %struct.notes_rewrite_cfg* %97, i8* %98)
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @fclose(i32* %100)
  %102 = call i32 @strbuf_release(%struct.strbuf* %5)
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %95, %22
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.notes_rewrite_cfg* @init_copy_notes_for_rewrite(i8*) #2

declare dso_local i32* @xfopen(i32, i8*) #2

declare dso_local i32 @am_path(%struct.am_state*, i8*) #2

declare dso_local i32 @strbuf_getline_lf(%struct.strbuf*, i32*) #2

declare dso_local i32 @error(i8*, i8*, ...) #2

declare dso_local i64 @parse_oid_hex(i32, %struct.object_id*, i8**) #2

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #2

declare dso_local i64 @copy_note_for_rewrite(%struct.notes_rewrite_cfg*, %struct.object_id*, %struct.object_id*) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @finish_copy_notes_for_rewrite(i32, %struct.notes_rewrite_cfg*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
