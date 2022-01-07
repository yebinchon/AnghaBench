; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_diff_tree_combined_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_diff_tree_combined_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32 }
%struct.commit = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rev_info = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_tree_combined_merge(%struct.commit* %0, i32 %1, %struct.rev_info* %2) #0 {
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca %struct.oid_array, align 4
  store %struct.commit* %0, %struct.commit** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rev_info* %2, %struct.rev_info** %6, align 8
  %9 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %10 = load %struct.commit*, %struct.commit** %4, align 8
  %11 = call %struct.commit_list* @get_saved_parents(%struct.rev_info* %9, %struct.commit* %10)
  store %struct.commit_list* %11, %struct.commit_list** %7, align 8
  %12 = bitcast %struct.oid_array* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 4, i1 false)
  br label %13

13:                                               ; preds = %16, %3
  %14 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %15 = icmp ne %struct.commit_list* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %18 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @oid_array_append(%struct.oid_array* %8, i32* %21)
  %23 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %24 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %23, i32 0, i32 0
  %25 = load %struct.commit_list*, %struct.commit_list** %24, align 8
  store %struct.commit_list* %25, %struct.commit_list** %7, align 8
  br label %13

26:                                               ; preds = %13
  %27 = load %struct.commit*, %struct.commit** %4, align 8
  %28 = getelementptr inbounds %struct.commit, %struct.commit* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %32 = call i32 @diff_tree_combined(i32* %29, %struct.oid_array* %8, i32 %30, %struct.rev_info* %31)
  %33 = call i32 @oid_array_clear(%struct.oid_array* %8)
  ret void
}

declare dso_local %struct.commit_list* @get_saved_parents(%struct.rev_info*, %struct.commit*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @oid_array_append(%struct.oid_array*, i32*) #1

declare dso_local i32 @diff_tree_combined(i32*, %struct.oid_array*, i32, %struct.rev_info*) #1

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
