; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_qsyncvp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_qsyncvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32 }
%struct.vnode = type { i32 }
%struct.ufsmount = type { i64* }
%struct.TYPE_2__ = type { %struct.dquot** }

@MAXQUOTAS = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@NODQUOT = common dso_local global %struct.dquot* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qsyncvp(%struct.vnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.ufsmount*, align 8
  %5 = alloca %struct.dquot*, align 8
  %6 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  %7 = load %struct.vnode*, %struct.vnode** %3, align 8
  %8 = getelementptr inbounds %struct.vnode, %struct.vnode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ufsmount* @VFSTOUFS(i32 %9)
  store %struct.ufsmount* %10, %struct.ufsmount** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAXQUOTAS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load %struct.ufsmount*, %struct.ufsmount** %4, align 8
  %17 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NULLVP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %30

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %11

30:                                               ; preds = %25, %11
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MAXQUOTAS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %61

35:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %57, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MAXQUOTAS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load %struct.vnode*, %struct.vnode** %3, align 8
  %42 = call %struct.TYPE_2__* @VTOI(%struct.vnode* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.dquot**, %struct.dquot*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.dquot*, %struct.dquot** %44, i64 %46
  %48 = load %struct.dquot*, %struct.dquot** %47, align 8
  store %struct.dquot* %48, %struct.dquot** %5, align 8
  %49 = load %struct.dquot*, %struct.dquot** %5, align 8
  %50 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %51 = icmp ne %struct.dquot* %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load %struct.vnode*, %struct.vnode** %3, align 8
  %54 = load %struct.dquot*, %struct.dquot** %5, align 8
  %55 = call i32 @dqsync(%struct.vnode* %53, %struct.dquot* %54)
  br label %56

56:                                               ; preds = %52, %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %36

60:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %34
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.ufsmount* @VFSTOUFS(i32) #1

declare dso_local %struct.TYPE_2__* @VTOI(%struct.vnode*) #1

declare dso_local i32 @dqsync(%struct.vnode*, %struct.dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
