; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_mark_reachable.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_mark_reachable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expire_reflog_policy_cb = type { i64, %struct.commit_list* }
%struct.commit_list = type { %struct.commit_list*, %struct.commit* }
%struct.commit = type { i64, %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }

@REACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expire_reflog_policy_cb*)* @mark_reachable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_reachable(%struct.expire_reflog_policy_cb* %0) #0 {
  %2 = alloca %struct.expire_reflog_policy_cb*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.commit*, align 8
  store %struct.expire_reflog_policy_cb* %0, %struct.expire_reflog_policy_cb** %2, align 8
  %8 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %2, align 8
  %9 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  store %struct.commit_list* null, %struct.commit_list** %5, align 8
  %11 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %2, align 8
  %12 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %11, i32 0, i32 1
  %13 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  store %struct.commit_list* %13, %struct.commit_list** %3, align 8
  br label %14

14:                                               ; preds = %27, %1
  %15 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %16 = icmp ne %struct.commit_list* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32, i32* @REACHABLE, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %21 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %20, i32 0, i32 1
  %22 = load %struct.commit*, %struct.commit** %21, align 8
  %23 = getelementptr inbounds %struct.commit, %struct.commit* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %19
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %29 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %28, i32 0, i32 0
  %30 = load %struct.commit_list*, %struct.commit_list** %29, align 8
  store %struct.commit_list* %30, %struct.commit_list** %3, align 8
  br label %14

31:                                               ; preds = %14
  %32 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %2, align 8
  %33 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %32, i32 0, i32 1
  %34 = load %struct.commit_list*, %struct.commit_list** %33, align 8
  store %struct.commit_list* %34, %struct.commit_list** %3, align 8
  br label %35

35:                                               ; preds = %99, %65, %52, %47, %31
  %36 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %37 = icmp ne %struct.commit_list* %36, null
  br i1 %37, label %38, label %100

38:                                               ; preds = %35
  %39 = call %struct.commit* @pop_commit(%struct.commit_list** %3)
  store %struct.commit* %39, %struct.commit** %7, align 8
  %40 = load %struct.commit*, %struct.commit** %7, align 8
  %41 = getelementptr inbounds %struct.commit, %struct.commit* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @REACHABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %35

48:                                               ; preds = %38
  %49 = load %struct.commit*, %struct.commit** %7, align 8
  %50 = call i64 @parse_commit(%struct.commit* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %35

53:                                               ; preds = %48
  %54 = load i32, i32* @REACHABLE, align 4
  %55 = load %struct.commit*, %struct.commit** %7, align 8
  %56 = getelementptr inbounds %struct.commit, %struct.commit* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 8
  %60 = load %struct.commit*, %struct.commit** %7, align 8
  %61 = getelementptr inbounds %struct.commit, %struct.commit* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %4, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load %struct.commit*, %struct.commit** %7, align 8
  %67 = call i32 @commit_list_insert(%struct.commit* %66, %struct.commit_list** %5)
  br label %35

68:                                               ; preds = %53
  %69 = load i32, i32* @REACHABLE, align 4
  %70 = load %struct.commit*, %struct.commit** %7, align 8
  %71 = getelementptr inbounds %struct.commit, %struct.commit* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 8
  %75 = load %struct.commit*, %struct.commit** %7, align 8
  %76 = getelementptr inbounds %struct.commit, %struct.commit* %75, i32 0, i32 2
  %77 = load %struct.commit_list*, %struct.commit_list** %76, align 8
  store %struct.commit_list* %77, %struct.commit_list** %6, align 8
  br label %78

78:                                               ; preds = %96, %95, %68
  %79 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %80 = icmp ne %struct.commit_list* %79, null
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %83 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %82, i32 0, i32 1
  %84 = load %struct.commit*, %struct.commit** %83, align 8
  store %struct.commit* %84, %struct.commit** %7, align 8
  %85 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %86 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %85, i32 0, i32 0
  %87 = load %struct.commit_list*, %struct.commit_list** %86, align 8
  store %struct.commit_list* %87, %struct.commit_list** %6, align 8
  %88 = load %struct.commit*, %struct.commit** %7, align 8
  %89 = getelementptr inbounds %struct.commit, %struct.commit* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @REACHABLE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  br label %78

96:                                               ; preds = %81
  %97 = load %struct.commit*, %struct.commit** %7, align 8
  %98 = call i32 @commit_list_insert(%struct.commit* %97, %struct.commit_list** %3)
  br label %78

99:                                               ; preds = %78
  br label %35

100:                                              ; preds = %35
  %101 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %102 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %2, align 8
  %103 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %102, i32 0, i32 1
  store %struct.commit_list* %101, %struct.commit_list** %103, align 8
  ret void
}

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
