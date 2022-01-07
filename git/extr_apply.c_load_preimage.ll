; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_load_preimage.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_load_preimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.apply_state = type { i32 }
%struct.image = type { i32 }
%struct.patch = type { i32, i32, i32*, i32, i32, i32 }
%struct.stat = type { i32 }
%struct.cache_entry = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"path %s has been renamed/deleted\00", align 1
@SUBMODULE_PATCH_WITHOUT_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"failed to read %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.image*, %struct.patch*, %struct.stat*, %struct.cache_entry*)* @load_preimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_preimage(%struct.apply_state* %0, %struct.image* %1, %struct.patch* %2, %struct.stat* %3, %struct.cache_entry* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.apply_state*, align 8
  %8 = alloca %struct.image*, align 8
  %9 = alloca %struct.patch*, align 8
  %10 = alloca %struct.stat*, align 8
  %11 = alloca %struct.cache_entry*, align 8
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.patch*, align 8
  %16 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %7, align 8
  store %struct.image* %1, %struct.image** %8, align 8
  store %struct.patch* %2, %struct.patch** %9, align 8
  store %struct.stat* %3, %struct.stat** %10, align 8
  store %struct.cache_entry* %4, %struct.cache_entry** %11, align 8
  %17 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %19 = load %struct.patch*, %struct.patch** %9, align 8
  %20 = call %struct.patch* @previous_patch(%struct.apply_state* %18, %struct.patch* %19, i32* %16)
  store %struct.patch* %20, %struct.patch** %15, align 8
  %21 = load i32, i32* %16, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.patch*, %struct.patch** %9, align 8
  %26 = getelementptr inbounds %struct.patch, %struct.patch* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @error(i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %91

29:                                               ; preds = %5
  %30 = load %struct.patch*, %struct.patch** %15, align 8
  %31 = icmp ne %struct.patch* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.patch*, %struct.patch** %15, align 8
  %34 = getelementptr inbounds %struct.patch, %struct.patch* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.patch*, %struct.patch** %15, align 8
  %37 = getelementptr inbounds %struct.patch, %struct.patch* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strbuf_add(%struct.strbuf* %12, i32 %35, i32 %38)
  br label %79

40:                                               ; preds = %29
  %41 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %42 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %43 = load %struct.stat*, %struct.stat** %10, align 8
  %44 = load %struct.patch*, %struct.patch** %9, align 8
  %45 = load %struct.patch*, %struct.patch** %9, align 8
  %46 = getelementptr inbounds %struct.patch, %struct.patch* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.patch*, %struct.patch** %9, align 8
  %49 = getelementptr inbounds %struct.patch, %struct.patch* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @load_patch_target(%struct.apply_state* %41, %struct.strbuf* %12, %struct.cache_entry* %42, %struct.stat* %43, %struct.patch* %44, i32 %47, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %6, align 4
  br label %91

56:                                               ; preds = %40
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @SUBMODULE_PATCH_WITHOUT_INDEX, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.patch*, %struct.patch** %9, align 8
  %62 = getelementptr inbounds %struct.patch, %struct.patch* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @free_fragment_list(i32* %63)
  %65 = load %struct.patch*, %struct.patch** %9, align 8
  %66 = getelementptr inbounds %struct.patch, %struct.patch* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  br label %77

67:                                               ; preds = %56
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.patch*, %struct.patch** %9, align 8
  %73 = getelementptr inbounds %struct.patch, %struct.patch* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @error(i32 %71, i32 %74)
  store i32 %75, i32* %6, align 4
  br label %91

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %60
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78, %32
  %80 = call i8* @strbuf_detach(%struct.strbuf* %12, i64* %13)
  store i8* %80, i8** %14, align 8
  %81 = load %struct.image*, %struct.image** %8, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load %struct.patch*, %struct.patch** %9, align 8
  %85 = getelementptr inbounds %struct.patch, %struct.patch* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @prepare_image(%struct.image* %81, i8* %82, i64 %83, i32 %89)
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %79, %70, %54, %23
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.patch* @previous_patch(%struct.apply_state*, %struct.patch*, i32*) #2

declare dso_local i32 @error(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @load_patch_target(%struct.apply_state*, %struct.strbuf*, %struct.cache_entry*, %struct.stat*, %struct.patch*, i32, i32) #2

declare dso_local i32 @free_fragment_list(i32*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i64*) #2

declare dso_local i32 @prepare_image(%struct.image*, i8*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
