; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_diff.c_builtin_diff_combined.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_diff.c_builtin_diff_combined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32 }
%struct.rev_info = type { i32, i32 }
%struct.object_array_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 4
@builtin_diff_usage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, i32, i8**, %struct.object_array_entry*, i32)* @builtin_diff_combined to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @builtin_diff_combined(%struct.rev_info* %0, i32 %1, i8** %2, %struct.object_array_entry* %3, i32 %4) #0 {
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.object_array_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.oid_array, align 4
  %12 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store %struct.object_array_entry* %3, %struct.object_array_entry** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = bitcast %struct.oid_array* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 4, i1 false)
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* @builtin_diff_usage, align 4
  %18 = call i32 @usage(i32 %17)
  br label %19

19:                                               ; preds = %16, %5
  %20 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %21 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %26 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %31 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %33 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %24, %19
  store i32 1, i32* %12, align 4
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.object_array_entry*, %struct.object_array_entry** %9, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %40, i64 %42
  %44 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @oid_array_append(%struct.oid_array* %11, i32* %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %35

51:                                               ; preds = %35
  %52 = load %struct.object_array_entry*, %struct.object_array_entry** %9, align 8
  %53 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %52, i64 0
  %54 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %58 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %61 = call i32 @diff_tree_combined(i32* %56, %struct.oid_array* %11, i32 %59, %struct.rev_info* %60)
  %62 = call i32 @oid_array_clear(%struct.oid_array* %11)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @oid_array_append(%struct.oid_array*, i32*) #2

declare dso_local i32 @diff_tree_combined(i32*, %struct.oid_array*, i32, %struct.rev_info*) #2

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
