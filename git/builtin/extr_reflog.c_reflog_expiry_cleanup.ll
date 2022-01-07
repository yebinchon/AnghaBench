; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_reflog_expiry_cleanup.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_reflog_expiry_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expire_reflog_policy_cb = type { i64, i32, %struct.commit_list* }
%struct.commit_list = type { i32, %struct.commit_list* }

@UE_ALWAYS = common dso_local global i64 0, align 8
@UE_HEAD = common dso_local global i64 0, align 8
@REACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @reflog_expiry_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reflog_expiry_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.expire_reflog_policy_cb*, align 8
  %4 = alloca %struct.commit_list*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.expire_reflog_policy_cb*
  store %struct.expire_reflog_policy_cb* %6, %struct.expire_reflog_policy_cb** %3, align 8
  %7 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %3, align 8
  %8 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UE_ALWAYS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  %13 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %3, align 8
  %14 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UE_HEAD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %3, align 8
  %20 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %19, i32 0, i32 2
  %21 = load %struct.commit_list*, %struct.commit_list** %20, align 8
  store %struct.commit_list* %21, %struct.commit_list** %4, align 8
  br label %22

22:                                               ; preds = %31, %18
  %23 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %24 = icmp ne %struct.commit_list* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %27 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @REACHABLE, align 4
  %30 = call i32 @clear_commit_marks(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25
  %32 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %33 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %32, i32 0, i32 1
  %34 = load %struct.commit_list*, %struct.commit_list** %33, align 8
  store %struct.commit_list* %34, %struct.commit_list** %4, align 8
  br label %22

35:                                               ; preds = %22
  %36 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %3, align 8
  %37 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %36, i32 0, i32 2
  %38 = load %struct.commit_list*, %struct.commit_list** %37, align 8
  %39 = call i32 @free_commit_list(%struct.commit_list* %38)
  br label %46

40:                                               ; preds = %12
  %41 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %3, align 8
  %42 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @REACHABLE, align 4
  %45 = call i32 @clear_commit_marks(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %35
  br label %47

47:                                               ; preds = %46, %1
  ret void
}

declare dso_local i32 @clear_commit_marks(i32, i32) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
