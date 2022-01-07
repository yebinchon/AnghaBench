; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_dqflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_dqflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dqhash = type { i32 }
%struct.vnode = type { i32 }
%struct.dquot = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.vnode** }

@dqhashtbl = common dso_local global %struct.dqhash* null, align 8
@dqhash = common dso_local global i64 0, align 8
@dq_hash = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*)* @dqflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dqflush(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca %struct.dqhash*, align 8
  %6 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @DQH_LOCK()
  %8 = load %struct.dqhash*, %struct.dqhash** @dqhashtbl, align 8
  %9 = load i64, i64* @dqhash, align 8
  %10 = getelementptr inbounds %struct.dqhash, %struct.dqhash* %8, i64 %9
  store %struct.dqhash* %10, %struct.dqhash** %5, align 8
  br label %11

11:                                               ; preds = %55, %1
  %12 = load %struct.dqhash*, %struct.dqhash** %5, align 8
  %13 = load %struct.dqhash*, %struct.dqhash** @dqhashtbl, align 8
  %14 = icmp uge %struct.dqhash* %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = load %struct.dqhash*, %struct.dqhash** %5, align 8
  %17 = call %struct.dquot* @LIST_FIRST(%struct.dqhash* %16)
  store %struct.dquot* %17, %struct.dquot** %3, align 8
  br label %18

18:                                               ; preds = %52, %15
  %19 = load %struct.dquot*, %struct.dquot** %3, align 8
  %20 = icmp ne %struct.dquot* %19, null
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = load %struct.dquot*, %struct.dquot** %3, align 8
  %23 = load i32, i32* @dq_hash, align 4
  %24 = call %struct.dquot* @LIST_NEXT(%struct.dquot* %22, i32 %23)
  store %struct.dquot* %24, %struct.dquot** %4, align 8
  %25 = load %struct.dquot*, %struct.dquot** %3, align 8
  %26 = getelementptr inbounds %struct.dquot, %struct.dquot* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.vnode**, %struct.vnode*** %28, align 8
  %30 = load %struct.dquot*, %struct.dquot** %3, align 8
  %31 = getelementptr inbounds %struct.dquot, %struct.dquot* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.vnode*, %struct.vnode** %29, i64 %32
  %34 = load %struct.vnode*, %struct.vnode** %33, align 8
  %35 = load %struct.vnode*, %struct.vnode** %2, align 8
  %36 = icmp ne %struct.vnode* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %52

38:                                               ; preds = %21
  %39 = load %struct.dquot*, %struct.dquot** %3, align 8
  %40 = getelementptr inbounds %struct.dquot, %struct.dquot* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @EBUSY, align 4
  store i32 %44, i32* %6, align 4
  br label %51

45:                                               ; preds = %38
  %46 = load %struct.dquot*, %struct.dquot** %3, align 8
  %47 = load i32, i32* @dq_hash, align 4
  %48 = call i32 @LIST_REMOVE(%struct.dquot* %46, i32 %47)
  %49 = load %struct.dquot*, %struct.dquot** %3, align 8
  %50 = getelementptr inbounds %struct.dquot, %struct.dquot* %49, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %50, align 8
  br label %51

51:                                               ; preds = %45, %43
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.dquot*, %struct.dquot** %4, align 8
  store %struct.dquot* %53, %struct.dquot** %3, align 8
  br label %18

54:                                               ; preds = %18
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.dqhash*, %struct.dqhash** %5, align 8
  %57 = getelementptr inbounds %struct.dqhash, %struct.dqhash* %56, i32 -1
  store %struct.dqhash* %57, %struct.dqhash** %5, align 8
  br label %11

58:                                               ; preds = %11
  %59 = call i32 (...) @DQH_UNLOCK()
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @DQH_LOCK(...) #1

declare dso_local %struct.dquot* @LIST_FIRST(%struct.dqhash*) #1

declare dso_local %struct.dquot* @LIST_NEXT(%struct.dquot*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.dquot*, i32) #1

declare dso_local i32 @DQH_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
