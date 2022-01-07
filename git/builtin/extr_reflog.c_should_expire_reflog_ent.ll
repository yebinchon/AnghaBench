; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_should_expire_reflog_ent.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_should_expire_reflog_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.expire_reflog_policy_cb = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.commit = type { i32 }

@UE_ALWAYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, i8*, i64, i32, i8*, i8*)* @should_expire_reflog_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_expire_reflog_ent(%struct.object_id* %0, %struct.object_id* %1, i8* %2, i64 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.expire_reflog_policy_cb*, align 8
  %17 = alloca %struct.commit*, align 8
  %18 = alloca %struct.commit*, align 8
  store %struct.object_id* %0, %struct.object_id** %9, align 8
  store %struct.object_id* %1, %struct.object_id** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %19 = load i8*, i8** %15, align 8
  %20 = bitcast i8* %19 to %struct.expire_reflog_policy_cb*
  store %struct.expire_reflog_policy_cb* %20, %struct.expire_reflog_policy_cb** %16, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %16, align 8
  %23 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %86

28:                                               ; preds = %7
  store %struct.commit* null, %struct.commit** %18, align 8
  store %struct.commit* null, %struct.commit** %17, align 8
  %29 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %16, align 8
  %30 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.object_id*, %struct.object_id** %9, align 8
  %36 = call i32 @keep_entry(%struct.commit** %17, %struct.object_id* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.object_id*, %struct.object_id** %10, align 8
  %40 = call i32 @keep_entry(%struct.commit** %18, %struct.object_id* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %34
  store i32 1, i32* %8, align 4
  br label %86

43:                                               ; preds = %38, %28
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %16, align 8
  %46 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %44, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %43
  %51 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %16, align 8
  %52 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UE_ALWAYS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  br label %86

57:                                               ; preds = %50
  %58 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %16, align 8
  %59 = load %struct.commit*, %struct.commit** %17, align 8
  %60 = load %struct.object_id*, %struct.object_id** %9, align 8
  %61 = call i64 @unreachable(%struct.expire_reflog_policy_cb* %58, %struct.commit* %59, %struct.object_id* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %16, align 8
  %65 = load %struct.commit*, %struct.commit** %18, align 8
  %66 = load %struct.object_id*, %struct.object_id** %10, align 8
  %67 = call i64 @unreachable(%struct.expire_reflog_policy_cb* %64, %struct.commit* %65, %struct.object_id* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %57
  store i32 1, i32* %8, align 4
  br label %86

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %43
  %72 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %16, align 8
  %73 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %16, align 8
  %79 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %80, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 1, i32* %8, align 4
  br label %86

85:                                               ; preds = %77, %71
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %84, %69, %56, %42, %27
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i32 @keep_entry(%struct.commit**, %struct.object_id*) #1

declare dso_local i64 @unreachable(%struct.expire_reflog_policy_cb*, %struct.commit*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
