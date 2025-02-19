; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_unreachable.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_unreachable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expire_reflog_policy_cb = type { i64, i64 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@REACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.expire_reflog_policy_cb*, %struct.commit*, %struct.object_id*)* @unreachable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unreachable(%struct.expire_reflog_policy_cb* %0, %struct.commit* %1, %struct.object_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.expire_reflog_policy_cb*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.object_id*, align 8
  store %struct.expire_reflog_policy_cb* %0, %struct.expire_reflog_policy_cb** %5, align 8
  store %struct.commit* %1, %struct.commit** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  %8 = load %struct.commit*, %struct.commit** %6, align 8
  %9 = icmp ne %struct.commit* %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = load %struct.object_id*, %struct.object_id** %7, align 8
  %12 = call i64 @is_null_oid(%struct.object_id* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %57

15:                                               ; preds = %10
  %16 = load i32, i32* @the_repository, align 4
  %17 = load %struct.object_id*, %struct.object_id** %7, align 8
  %18 = call %struct.commit* @lookup_commit_reference_gently(i32 %16, %struct.object_id* %17, i32 1)
  store %struct.commit* %18, %struct.commit** %6, align 8
  %19 = load %struct.commit*, %struct.commit** %6, align 8
  %20 = icmp ne %struct.commit* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %57

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.commit*, %struct.commit** %6, align 8
  %25 = getelementptr inbounds %struct.commit, %struct.commit* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @REACHABLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %57

32:                                               ; preds = %23
  %33 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %5, align 8
  %34 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %5, align 8
  %39 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %5, align 8
  %44 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %5, align 8
  %46 = call i32 @mark_reachable(%struct.expire_reflog_policy_cb* %45)
  br label %47

47:                                               ; preds = %42, %37, %32
  %48 = load %struct.commit*, %struct.commit** %6, align 8
  %49 = getelementptr inbounds %struct.commit, %struct.commit* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @REACHABLE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %47, %31, %21, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

declare dso_local i32 @mark_reachable(%struct.expire_reflog_policy_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
