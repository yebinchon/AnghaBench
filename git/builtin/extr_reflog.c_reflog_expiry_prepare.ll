; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_reflog_expiry_prepare.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_reflog_expiry_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.expire_reflog_policy_cb = type { i64, i64, %struct.TYPE_2__, i32*, i32*, %struct.commit_list* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.commit_list = type { i32*, %struct.commit_list* }

@UE_HEAD = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4
@UE_ALWAYS = common dso_local global i64 0, align 8
@UE_NORMAL = common dso_local global i64 0, align 8
@push_tip_to_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.object_id*, i8*)* @reflog_expiry_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reflog_expiry_prepare(i8* %0, %struct.object_id* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.expire_reflog_policy_cb*, align 8
  %8 = alloca %struct.commit_list*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.expire_reflog_policy_cb*
  store %struct.expire_reflog_policy_cb* %10, %struct.expire_reflog_policy_cb** %7, align 8
  %11 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %12 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @is_head(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %3
  %21 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %22 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load i64, i64* @UE_HEAD, align 8
  %24 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %25 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %45

26:                                               ; preds = %16
  %27 = load i32, i32* @the_repository, align 4
  %28 = load %struct.object_id*, %struct.object_id** %5, align 8
  %29 = call i32* @lookup_commit_reference_gently(i32 %27, %struct.object_id* %28, i32 1)
  %30 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %31 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  %32 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %33 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load i64, i64* @UE_ALWAYS, align 8
  %38 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %39 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %44

40:                                               ; preds = %26
  %41 = load i64, i64* @UE_NORMAL, align 8
  %42 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %43 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %20
  %46 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %47 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %51 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sle i64 %49, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i64, i64* @UE_ALWAYS, align 8
  %57 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %58 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %45
  %60 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %61 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  %62 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %63 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %62, i32 0, i32 5
  store %struct.commit_list* null, %struct.commit_list** %63, align 8
  %64 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %65 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UE_ALWAYS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %114

69:                                               ; preds = %59
  %70 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %71 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @UE_HEAD, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %69
  %76 = load i32, i32* @push_tip_to_list, align 4
  %77 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %78 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %77, i32 0, i32 5
  %79 = call i32 @for_each_ref(i32 %76, %struct.commit_list** %78)
  %80 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %81 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %80, i32 0, i32 5
  %82 = load %struct.commit_list*, %struct.commit_list** %81, align 8
  store %struct.commit_list* %82, %struct.commit_list** %8, align 8
  br label %83

83:                                               ; preds = %93, %75
  %84 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %85 = icmp ne %struct.commit_list* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %88 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %91 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %90, i32 0, i32 3
  %92 = call i32 @commit_list_insert(i32* %89, i32** %91)
  br label %93

93:                                               ; preds = %86
  %94 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %95 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %94, i32 0, i32 1
  %96 = load %struct.commit_list*, %struct.commit_list** %95, align 8
  store %struct.commit_list* %96, %struct.commit_list** %8, align 8
  br label %83

97:                                               ; preds = %83
  br label %105

98:                                               ; preds = %69
  %99 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %100 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %103 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %102, i32 0, i32 3
  %104 = call i32 @commit_list_insert(i32* %101, i32** %103)
  br label %105

105:                                              ; preds = %98, %97
  %106 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %107 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %111 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %7, align 8
  %113 = call i32 @mark_reachable(%struct.expire_reflog_policy_cb* %112)
  br label %114

114:                                              ; preds = %105, %59
  ret void
}

declare dso_local i64 @is_head(i8*) #1

declare dso_local i32* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

declare dso_local i32 @for_each_ref(i32, %struct.commit_list**) #1

declare dso_local i32 @commit_list_insert(i32*, i32**) #1

declare dso_local i32 @mark_reachable(%struct.expire_reflog_policy_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
