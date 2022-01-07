; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_list_active.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_list_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_list = type { i32, %struct.cache_entry**, i32 }
%struct.cache_entry = type { i32 }

@MODULE_LIST_INIT = common dso_local global %struct.module_list zeroinitializer, align 8
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_list*)* @module_list_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @module_list_active(%struct.module_list* %0) #0 {
  %2 = alloca %struct.module_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_list, align 8
  %5 = alloca %struct.cache_entry*, align 8
  store %struct.module_list* %0, %struct.module_list** %2, align 8
  %6 = bitcast %struct.module_list* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.module_list* @MODULE_LIST_INIT to i8*), i64 24, i1 false)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %45, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.module_list*, %struct.module_list** %2, align 8
  %10 = getelementptr inbounds %struct.module_list, %struct.module_list* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %7
  %14 = load %struct.module_list*, %struct.module_list** %2, align 8
  %15 = getelementptr inbounds %struct.module_list, %struct.module_list* %14, i32 0, i32 1
  %16 = load %struct.cache_entry**, %struct.cache_entry*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %16, i64 %18
  %20 = load %struct.cache_entry*, %struct.cache_entry** %19, align 8
  store %struct.cache_entry* %20, %struct.cache_entry** %5, align 8
  %21 = load i32, i32* @the_repository, align 4
  %22 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %23 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @is_submodule_active(i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  br label %45

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.module_list, %struct.module_list* %4, i32 0, i32 1
  %30 = load %struct.cache_entry**, %struct.cache_entry*** %29, align 8
  %31 = getelementptr inbounds %struct.module_list, %struct.module_list* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = getelementptr inbounds %struct.module_list, %struct.module_list* %4, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ALLOC_GROW(%struct.cache_entry** %30, i32 %33, i32 %35)
  %37 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %38 = getelementptr inbounds %struct.module_list, %struct.module_list* %4, i32 0, i32 1
  %39 = load %struct.cache_entry**, %struct.cache_entry*** %38, align 8
  %40 = getelementptr inbounds %struct.module_list, %struct.module_list* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %39, i64 %43
  store %struct.cache_entry* %37, %struct.cache_entry** %44, align 8
  br label %45

45:                                               ; preds = %28, %27
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %7

48:                                               ; preds = %7
  %49 = load %struct.module_list*, %struct.module_list** %2, align 8
  %50 = getelementptr inbounds %struct.module_list, %struct.module_list* %49, i32 0, i32 1
  %51 = load %struct.cache_entry**, %struct.cache_entry*** %50, align 8
  %52 = call i32 @free(%struct.cache_entry** %51)
  %53 = load %struct.module_list*, %struct.module_list** %2, align 8
  %54 = bitcast %struct.module_list* %53 to i8*
  %55 = bitcast %struct.module_list* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @is_submodule_active(i32, i32) #2

declare dso_local i32 @ALLOC_GROW(%struct.cache_entry**, i32, i32) #2

declare dso_local i32 @free(%struct.cache_entry**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
