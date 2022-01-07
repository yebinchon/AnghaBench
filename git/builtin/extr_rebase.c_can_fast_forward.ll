; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_can_fast_forward.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_can_fast_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.object_id }
%struct.commit_list = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.object_id }

@the_repository = common dso_local global i32 0, align 4
@null_oid = common dso_local global %struct.object_id zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, %struct.commit*, %struct.commit*, %struct.object_id*, %struct.object_id*)* @can_fast_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_fast_forward(%struct.commit* %0, %struct.commit* %1, %struct.commit* %2, %struct.object_id* %3, %struct.object_id* %4) #0 {
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca %struct.commit*, align 8
  %12 = alloca %struct.commit_list*, align 8
  %13 = alloca i32, align 4
  store %struct.commit* %0, %struct.commit** %6, align 8
  store %struct.commit* %1, %struct.commit** %7, align 8
  store %struct.commit* %2, %struct.commit** %8, align 8
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  store %struct.object_id* %4, %struct.object_id** %10, align 8
  %14 = load i32, i32* @the_repository, align 4
  %15 = load %struct.object_id*, %struct.object_id** %9, align 8
  %16 = call %struct.commit* @lookup_commit(i32 %14, %struct.object_id* %15)
  store %struct.commit* %16, %struct.commit** %11, align 8
  store %struct.commit_list* null, %struct.commit_list** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.commit*, %struct.commit** %11, align 8
  %18 = icmp ne %struct.commit* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %91

20:                                               ; preds = %5
  %21 = load %struct.commit*, %struct.commit** %6, align 8
  %22 = load %struct.commit*, %struct.commit** %11, align 8
  %23 = call %struct.commit_list* @get_merge_bases(%struct.commit* %21, %struct.commit* %22)
  store %struct.commit_list* %23, %struct.commit_list** %12, align 8
  %24 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %25 = icmp ne %struct.commit_list* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %28 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %20
  %32 = load %struct.object_id*, %struct.object_id** %10, align 8
  %33 = call i32 @oidcpy(%struct.object_id* %32, %struct.object_id* @null_oid)
  br label %91

34:                                               ; preds = %26
  %35 = load %struct.object_id*, %struct.object_id** %10, align 8
  %36 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %37 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @oidcpy(%struct.object_id* %35, %struct.object_id* %40)
  %42 = load %struct.object_id*, %struct.object_id** %10, align 8
  %43 = load %struct.commit*, %struct.commit** %6, align 8
  %44 = getelementptr inbounds %struct.commit, %struct.commit* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @oideq(%struct.object_id* %42, %struct.object_id* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %34
  br label %91

49:                                               ; preds = %34
  %50 = load %struct.commit*, %struct.commit** %8, align 8
  %51 = icmp ne %struct.commit* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.commit*, %struct.commit** %8, align 8
  %54 = getelementptr inbounds %struct.commit, %struct.commit* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.object_id*, %struct.object_id** %10, align 8
  %57 = call i32 @oideq(%struct.object_id* %55, %struct.object_id* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %91

60:                                               ; preds = %52, %49
  %61 = load %struct.commit*, %struct.commit** %7, align 8
  %62 = icmp ne %struct.commit* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  br label %91

64:                                               ; preds = %60
  %65 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %66 = call i32 @free_commit_list(%struct.commit_list* %65)
  %67 = load %struct.commit*, %struct.commit** %7, align 8
  %68 = load %struct.commit*, %struct.commit** %11, align 8
  %69 = call %struct.commit_list* @get_merge_bases(%struct.commit* %67, %struct.commit* %68)
  store %struct.commit_list* %69, %struct.commit_list** %12, align 8
  %70 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %71 = icmp ne %struct.commit_list* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %74 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %64
  br label %91

78:                                               ; preds = %72
  %79 = load %struct.commit*, %struct.commit** %6, align 8
  %80 = getelementptr inbounds %struct.commit, %struct.commit* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %83 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = call i32 @oideq(%struct.object_id* %81, %struct.object_id* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  br label %91

90:                                               ; preds = %78
  store i32 1, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %89, %77, %63, %59, %48, %31, %19
  %92 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %93 = call i32 @free_commit_list(%struct.commit_list* %92)
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.commit*, %struct.commit** %6, align 8
  %98 = load %struct.commit*, %struct.commit** %11, align 8
  %99 = call i64 @is_linear_history(%struct.commit* %97, %struct.commit* %98)
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %96, %91
  %102 = phi i1 [ false, %91 ], [ %100, %96 ]
  %103 = zext i1 %102 to i32
  ret i32 %103
}

declare dso_local %struct.commit* @lookup_commit(i32, %struct.object_id*) #1

declare dso_local %struct.commit_list* @get_merge_bases(%struct.commit*, %struct.commit*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @oideq(%struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local i64 @is_linear_history(%struct.commit*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
