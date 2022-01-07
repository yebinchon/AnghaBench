; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_gc.c_need_to_gc.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_gc.c_need_to_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64 }
%struct.packed_git = type { i32 }

@gc_auto_threshold = common dso_local global i64 0, align 8
@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 8
@big_pack_threshold = common dso_local global i64 0, align 8
@gc_auto_pack_limit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"pre-auto-gc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @need_to_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_to_gc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.string_list, align 8
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @gc_auto_threshold, align 8
  %7 = icmp sle i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %57

9:                                                ; preds = %0
  %10 = call i64 (...) @too_many_packs()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = bitcast %struct.string_list* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 8, i1 false)
  %14 = load i64, i64* @big_pack_threshold, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i64, i64* @big_pack_threshold, align 8
  %18 = call %struct.packed_git* @find_base_packs(%struct.string_list* %2, i64 %17)
  %19 = getelementptr inbounds %struct.string_list, %struct.string_list* %2, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @gc_auto_pack_limit, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  store i64 0, i64* @big_pack_threshold, align 8
  %24 = call i32 @string_list_clear(%struct.string_list* %2, i32 0)
  %25 = call %struct.packed_git* @find_base_packs(%struct.string_list* %2, i64 0)
  br label %26

26:                                               ; preds = %23, %16
  br label %42

27:                                               ; preds = %12
  %28 = call %struct.packed_git* @find_base_packs(%struct.string_list* %2, i64 0)
  store %struct.packed_git* %28, %struct.packed_git** %3, align 8
  %29 = call i32 (...) @total_ram()
  store i32 %29, i32* %4, align 4
  %30 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %31 = call i32 @estimate_repack_memory(%struct.packed_git* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sdiv i32 %36, 2
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %27
  %40 = call i32 @string_list_clear(%struct.string_list* %2, i32 0)
  br label %41

41:                                               ; preds = %39, %34
  br label %42

42:                                               ; preds = %41, %26
  %43 = call i32 @add_repack_all_option(%struct.string_list* %2)
  %44 = call i32 @string_list_clear(%struct.string_list* %2, i32 0)
  br label %52

45:                                               ; preds = %9
  %46 = call i64 (...) @too_many_loose_objects()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (...) @add_repack_incremental_option()
  br label %51

50:                                               ; preds = %45
  store i32 0, i32* %1, align 4
  br label %57

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51, %42
  %53 = call i64 @run_hook_le(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %1, align 4
  br label %57

56:                                               ; preds = %52
  store i32 1, i32* %1, align 4
  br label %57

57:                                               ; preds = %56, %55, %50, %8
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i64 @too_many_packs(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.packed_git* @find_base_packs(%struct.string_list*, i64) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @total_ram(...) #1

declare dso_local i32 @estimate_repack_memory(%struct.packed_git*) #1

declare dso_local i32 @add_repack_all_option(%struct.string_list*) #1

declare dso_local i64 @too_many_loose_objects(...) #1

declare dso_local i32 @add_repack_incremental_option(...) #1

declare dso_local i64 @run_hook_le(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
