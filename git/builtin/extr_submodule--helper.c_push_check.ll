; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_push_check.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_push_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refspec = type { i32, %struct.refspec_item* }
%struct.refspec_item = type { i8*, i64, i64 }
%struct.remote = type { i64 }
%struct.object_id = type { i32 }
%struct.ref = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"submodule--helper push-check requires at least 2 arguments\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to resolve HEAD as a valid ref.\00", align 1
@REMOTE_UNCONFIGURED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"remote '%s' not configured\00", align 1
@REFSPEC_INIT_PUSH = common dso_local global %struct.refspec zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [57 x i8] c"HEAD does not match the named branch in the superproject\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"src refspec '%s' must name a ref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @push_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_check(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.remote*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.object_id, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ref*, align 8
  %14 = alloca %struct.refspec, align 8
  %15 = alloca %struct.refspec_item*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  %28 = call i8* @resolve_refdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.object_id* %11, i32* null)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %20
  %32 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 (i8*, ...) @die(i8* %34)
  br label %36

36:                                               ; preds = %31, %20
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 1, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call %struct.remote* @pushremote_get(i8* %44)
  store %struct.remote* %45, %struct.remote** %7, align 8
  %46 = load %struct.remote*, %struct.remote** %7, align 8
  %47 = icmp ne %struct.remote* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.remote*, %struct.remote** %7, align 8
  %50 = getelementptr inbounds %struct.remote, %struct.remote* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @REMOTE_UNCONFIGURED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48, %41
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %60, 2
  br i1 %61, label %62, label %127

62:                                               ; preds = %59
  %63 = call %struct.ref* (...) @get_local_heads()
  store %struct.ref* %63, %struct.ref** %13, align 8
  %64 = bitcast %struct.refspec* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 bitcast (%struct.refspec* @REFSPEC_INIT_PUSH to i8*), i64 16, i1 false)
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 %67, 2
  %69 = call i32 @refspec_appendn(%struct.refspec* %14, i8** %66, i32 %68)
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %122, %62
  %71 = load i32, i32* %12, align 4
  %72 = getelementptr inbounds %struct.refspec, %struct.refspec* %14, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %125

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.refspec, %struct.refspec* %14, i32 0, i32 1
  %77 = load %struct.refspec_item*, %struct.refspec_item** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %77, i64 %79
  store %struct.refspec_item* %80, %struct.refspec_item** %15, align 8
  %81 = load %struct.refspec_item*, %struct.refspec_item** %15, align 8
  %82 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %75
  %86 = load %struct.refspec_item*, %struct.refspec_item** %15, align 8
  %87 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %75
  br label %122

91:                                               ; preds = %85
  %92 = load %struct.refspec_item*, %struct.refspec_item** %15, align 8
  %93 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.ref*, %struct.ref** %13, align 8
  %96 = call i32 @count_refspec_match(i8* %94, %struct.ref* %95, i32* null)
  switch i32 %96, label %116 [
    i32 1, label %97
    i32 0, label %98
  ]

97:                                               ; preds = %91
  br label %121

98:                                               ; preds = %91
  %99 = load %struct.refspec_item*, %struct.refspec_item** %15, align 8
  %100 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load i8*, i8** %9, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @strcmp(i8* %108, i8* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %121

113:                                              ; preds = %107, %104
  %114 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %98
  br label %116

116:                                              ; preds = %91, %115
  %117 = load %struct.refspec_item*, %struct.refspec_item** %15, align 8
  %118 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %116, %112, %97
  br label %122

122:                                              ; preds = %121, %90
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %70

125:                                              ; preds = %70
  %126 = call i32 @refspec_clear(%struct.refspec* %14)
  br label %127

127:                                              ; preds = %125, %59
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @free(i8* %128)
  ret i32 0
}

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i8* @resolve_refdup(i8*, i32, %struct.object_id*, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.remote* @pushremote_get(i8*) #1

declare dso_local %struct.ref* @get_local_heads(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @refspec_appendn(%struct.refspec*, i8**, i32) #1

declare dso_local i32 @count_refspec_match(i8*, %struct.ref*, i32*) #1

declare dso_local i32 @refspec_clear(%struct.refspec*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
