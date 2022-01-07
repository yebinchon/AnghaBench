; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_load_current.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_load_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.apply_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.cache_entry** }
%struct.cache_entry = type { i32 }
%struct.image = type { i32 }
%struct.patch = type { i8*, i32, i32, i32, i32 }
%struct.stat = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"patch to %s is not a creation\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: does not exist in index\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: does not match index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.image*, %struct.patch*)* @load_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_current(%struct.apply_state* %0, %struct.image* %1, %struct.patch* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.apply_state*, align 8
  %6 = alloca %struct.image*, align 8
  %7 = alloca %struct.patch*, align 8
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca %struct.cache_entry*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %5, align 8
  store %struct.image* %1, %struct.image** %6, align 8
  store %struct.patch* %2, %struct.patch** %7, align 8
  %17 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = load %struct.patch*, %struct.patch** %7, align 8
  %19 = getelementptr inbounds %struct.patch, %struct.patch* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %15, align 8
  %21 = load %struct.patch*, %struct.patch** %7, align 8
  %22 = getelementptr inbounds %struct.patch, %struct.patch* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %16, align 4
  %24 = load %struct.patch*, %struct.patch** %7, align 8
  %25 = getelementptr inbounds %struct.patch, %struct.patch* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load %struct.patch*, %struct.patch** %7, align 8
  %30 = getelementptr inbounds %struct.patch, %struct.patch* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @BUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %35 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = call i32 @index_name_pos(%struct.TYPE_5__* %38, i8* %39, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8*, i8** %15, align 8
  %48 = call i32 @error(i32 %46, i8* %47)
  store i32 %48, i32* %4, align 4
  br label %119

49:                                               ; preds = %33
  %50 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %51 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.cache_entry**, %struct.cache_entry*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %56, i64 %58
  %60 = load %struct.cache_entry*, %struct.cache_entry** %59, align 8
  store %struct.cache_entry* %60, %struct.cache_entry** %14, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = call i64 @lstat(i8* %61, %struct.stat* %13)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %49
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @ENOENT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i8*, i8** %15, align 8
  %70 = call i32 @error_errno(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  store i32 %70, i32* %4, align 4
  br label %119

71:                                               ; preds = %64
  %72 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %73 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %78 = call i64 @checkout_target(%struct.TYPE_5__* %76, %struct.cache_entry* %77, %struct.stat* %13)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %119

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %49
  %83 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %84 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %85 = call i64 @verify_index_match(%struct.apply_state* %83, %struct.cache_entry* %84, %struct.stat* %13)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i8*, i8** %15, align 8
  %90 = call i32 @error(i32 %88, i8* %89)
  store i32 %90, i32* %4, align 4
  br label %119

91:                                               ; preds = %82
  %92 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %93 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %94 = load %struct.patch*, %struct.patch** %7, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @load_patch_target(%struct.apply_state* %92, %struct.strbuf* %8, %struct.cache_entry* %93, %struct.stat* %13, %struct.patch* %94, i8* %95, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %119

102:                                              ; preds = %91
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 -1, i32* %4, align 4
  br label %119

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %106
  %108 = call i8* @strbuf_detach(%struct.strbuf* %8, i64* %11)
  store i8* %108, i8** %12, align 8
  %109 = load %struct.image*, %struct.image** %6, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.patch*, %struct.patch** %7, align 8
  %113 = getelementptr inbounds %struct.patch, %struct.patch* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @prepare_image(%struct.image* %109, i8* %110, i64 %111, i32 %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %107, %105, %100, %87, %80, %68, %45
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUG(i8*, i32) #2

declare dso_local i32 @index_name_pos(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @error_errno(i8*, i8*) #2

declare dso_local i64 @checkout_target(%struct.TYPE_5__*, %struct.cache_entry*, %struct.stat*) #2

declare dso_local i64 @verify_index_match(%struct.apply_state*, %struct.cache_entry*, %struct.stat*) #2

declare dso_local i32 @load_patch_target(%struct.apply_state*, %struct.strbuf*, %struct.cache_entry*, %struct.stat*, %struct.patch*, i8*, i32) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i64*) #2

declare dso_local i32 @prepare_image(%struct.image*, i8*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
