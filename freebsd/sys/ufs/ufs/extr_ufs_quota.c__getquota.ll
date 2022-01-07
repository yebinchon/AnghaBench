; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c__getquota.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c__getquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.dqblk64 }
%struct.dqblk64 = type { i32 }
%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mount = type { i32 }

@unprivileged_get_quota = common dso_local global i32 0, align 4
@PRIV_VFS_GETQUOTA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NODQUOT = common dso_local global %struct.dquot* null, align 8
@NULLVP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.mount*, i32, i32, %struct.dqblk64*)* @_getquota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_getquota(%struct.thread* %0, %struct.mount* %1, i32 %2, i32 %3, %struct.dqblk64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dqblk64*, align 8
  %12 = alloca %struct.dquot*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.mount* %1, %struct.mount** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dqblk64* %4, %struct.dqblk64** %11, align 8
  %14 = load i32, i32* %10, align 4
  switch i32 %14, label %56 [
    i32 128, label %15
    i32 129, label %36
  ]

15:                                               ; preds = %5
  %16 = load %struct.thread*, %struct.thread** %7, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load i32, i32* @unprivileged_get_quota, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load %struct.thread*, %struct.thread** %7, align 8
  %28 = load i32, i32* @PRIV_VFS_GETQUOTA, align 4
  %29 = call i32 @priv_check(%struct.thread* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %6, align 4
  br label %80

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %23, %15
  br label %58

36:                                               ; preds = %5
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.thread*, %struct.thread** %7, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 @groupmember(i32 %37, %struct.TYPE_2__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @unprivileged_get_quota, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load %struct.thread*, %struct.thread** %7, align 8
  %48 = load i32, i32* @PRIV_VFS_GETQUOTA, align 4
  %49 = call i32 @priv_check(%struct.thread* %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %80

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %43, %36
  br label %58

56:                                               ; preds = %5
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %6, align 4
  br label %80

58:                                               ; preds = %55, %35
  %59 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  store %struct.dquot* %59, %struct.dquot** %12, align 8
  %60 = load i32, i32* @NULLVP, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.mount*, %struct.mount** %8, align 8
  %63 = call i32 @VFSTOUFS(%struct.mount* %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @dqget(i32 %60, i32 %61, i32 %63, i32 %64, %struct.dquot** %12)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %80

70:                                               ; preds = %58
  %71 = load %struct.dqblk64*, %struct.dqblk64** %11, align 8
  %72 = load %struct.dquot*, %struct.dquot** %12, align 8
  %73 = getelementptr inbounds %struct.dquot, %struct.dquot* %72, i32 0, i32 0
  %74 = bitcast %struct.dqblk64* %71 to i8*
  %75 = bitcast %struct.dqblk64* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 4, i1 false)
  %76 = load i32, i32* @NULLVP, align 4
  %77 = load %struct.dquot*, %struct.dquot** %12, align 8
  %78 = call i32 @dqrele(i32 %76, %struct.dquot* %77)
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %70, %68, %56, %52, %32
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @groupmember(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dqget(i32, i32, i32, i32, %struct.dquot**) #1

declare dso_local i32 @VFSTOUFS(%struct.mount*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dqrele(i32, %struct.dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
