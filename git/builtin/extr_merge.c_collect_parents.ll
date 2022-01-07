; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_collect_parents.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_collect_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.commit_list = type { i32, %struct.commit_list* }
%struct.commit = type { i32 }
%struct.TYPE_4__ = type { %struct.commit_list* }
%struct.TYPE_3__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@have_message = common dso_local global i32 0, align 4
@shortlog_len = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"FETCH_HEAD\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"not something we can merge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list* (%struct.commit*, i32*, i32, i8**, %struct.strbuf*)* @collect_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list* @collect_parents(%struct.commit* %0, i32* %1, i32 %2, i8** %3, %struct.strbuf* %4) #0 {
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.commit_list*, align 8
  %13 = alloca %struct.commit_list**, align 8
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca %struct.strbuf*, align 8
  %16 = alloca %struct.commit*, align 8
  %17 = alloca %struct.commit_list*, align 8
  store %struct.commit* %0, %struct.commit** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store %struct.strbuf* %4, %struct.strbuf** %10, align 8
  store %struct.commit_list* null, %struct.commit_list** %12, align 8
  store %struct.commit_list** %12, %struct.commit_list*** %13, align 8
  %18 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store %struct.strbuf* null, %struct.strbuf** %15, align 8
  %19 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %20 = icmp ne %struct.strbuf* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load i32, i32* @have_message, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* @shortlog_len, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  store %struct.strbuf* %14, %struct.strbuf** %15, align 8
  br label %28

28:                                               ; preds = %27, %24, %5
  %29 = load %struct.commit*, %struct.commit** %6, align 8
  %30 = icmp ne %struct.commit* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.commit*, %struct.commit** %6, align 8
  %33 = load %struct.commit_list**, %struct.commit_list*** %13, align 8
  %34 = call %struct.TYPE_4__* @commit_list_insert(%struct.commit* %32, %struct.commit_list** %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.commit_list** %35, %struct.commit_list*** %13, align 8
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i8**, i8*** %9, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %39
  %46 = load %struct.commit_list**, %struct.commit_list*** %13, align 8
  %47 = load %struct.strbuf*, %struct.strbuf** %15, align 8
  %48 = call i32 @handle_fetch_head(%struct.commit_list** %46, %struct.strbuf* %47)
  %49 = load %struct.commit*, %struct.commit** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %52 = call %struct.commit_list* @reduce_parents(%struct.commit* %49, i32* %50, %struct.commit_list* %51)
  store %struct.commit_list* %52, %struct.commit_list** %12, align 8
  br label %110

53:                                               ; preds = %39, %36
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %80, %53
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load i8**, i8*** %9, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call %struct.commit* @get_merge_parent(i8* %63)
  store %struct.commit* %64, %struct.commit** %16, align 8
  %65 = load %struct.commit*, %struct.commit** %16, align 8
  %66 = icmp ne %struct.commit* %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %58
  %68 = load i8**, i8*** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 @help_unknown_ref(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %67, %58
  %76 = load %struct.commit*, %struct.commit** %16, align 8
  %77 = load %struct.commit_list**, %struct.commit_list*** %13, align 8
  %78 = call %struct.TYPE_4__* @commit_list_insert(%struct.commit* %76, %struct.commit_list** %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store %struct.commit_list** %79, %struct.commit_list*** %13, align 8
  br label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %54

83:                                               ; preds = %54
  %84 = load %struct.commit*, %struct.commit** %6, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %87 = call %struct.commit_list* @reduce_parents(%struct.commit* %84, i32* %85, %struct.commit_list* %86)
  store %struct.commit_list* %87, %struct.commit_list** %12, align 8
  %88 = load %struct.strbuf*, %struct.strbuf** %15, align 8
  %89 = icmp ne %struct.strbuf* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %83
  %91 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  store %struct.commit_list* %91, %struct.commit_list** %17, align 8
  br label %92

92:                                               ; preds = %104, %90
  %93 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %94 = icmp ne %struct.commit_list* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %97 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.TYPE_3__* @merge_remote_util(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.strbuf*, %struct.strbuf** %15, align 8
  %103 = call i32 @merge_name(i32 %101, %struct.strbuf* %102)
  br label %104

104:                                              ; preds = %95
  %105 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %106 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %105, i32 0, i32 1
  %107 = load %struct.commit_list*, %struct.commit_list** %106, align 8
  store %struct.commit_list* %107, %struct.commit_list** %17, align 8
  br label %92

108:                                              ; preds = %92
  br label %109

109:                                              ; preds = %108, %83
  br label %110

110:                                              ; preds = %109, %45
  %111 = load %struct.strbuf*, %struct.strbuf** %15, align 8
  %112 = icmp ne %struct.strbuf* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.strbuf*, %struct.strbuf** %15, align 8
  %115 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %116 = call i32 @prepare_merge_message(%struct.strbuf* %114, %struct.strbuf* %115)
  %117 = load %struct.strbuf*, %struct.strbuf** %15, align 8
  %118 = call i32 @strbuf_release(%struct.strbuf* %117)
  br label %119

119:                                              ; preds = %113, %110
  %120 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  ret %struct.commit_list* %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_4__* @commit_list_insert(%struct.commit*, %struct.commit_list**) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @handle_fetch_head(%struct.commit_list**, %struct.strbuf*) #2

declare dso_local %struct.commit_list* @reduce_parents(%struct.commit*, i32*, %struct.commit_list*) #2

declare dso_local %struct.commit* @get_merge_parent(i8*) #2

declare dso_local i32 @help_unknown_ref(i8*, i8*, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @merge_name(i32, %struct.strbuf*) #2

declare dso_local %struct.TYPE_3__* @merge_remote_util(i32) #2

declare dso_local i32 @prepare_merge_message(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
