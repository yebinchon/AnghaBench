; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_count_reflog_ent.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_count_reflog_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.expire_reflog_policy_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, i8*, i64, i32, i8*, i8*)* @count_reflog_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_reflog_ent(%struct.object_id* %0, %struct.object_id* %1, i8* %2, i64 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.expire_reflog_policy_cb*, align 8
  store %struct.object_id* %0, %struct.object_id** %8, align 8
  store %struct.object_id* %1, %struct.object_id** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load i8*, i8** %14, align 8
  %17 = bitcast i8* %16 to %struct.expire_reflog_policy_cb*
  store %struct.expire_reflog_policy_cb* %17, %struct.expire_reflog_policy_cb** %15, align 8
  %18 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %15, align 8
  %19 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %15, align 8
  %26 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %23, %7
  %31 = load %struct.expire_reflog_policy_cb*, %struct.expire_reflog_policy_cb** %15, align 8
  %32 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %23
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
