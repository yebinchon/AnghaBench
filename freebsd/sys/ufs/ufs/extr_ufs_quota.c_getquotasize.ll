; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_getquotasize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_getquotasize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.ufsmount = type { i64*, i32* }

@NULLVP = common dso_local global i64 0, align 8
@QTF_CLOSING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QTF_64BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getquotasize(%struct.thread* %0, %struct.mount* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ufsmount*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.mount* %1, %struct.mount** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.mount*, %struct.mount** %8, align 8
  %15 = call %struct.ufsmount* @VFSTOUFS(%struct.mount* %14)
  store %struct.ufsmount* %15, %struct.ufsmount** %12, align 8
  %16 = load %struct.ufsmount*, %struct.ufsmount** %12, align 8
  %17 = call i32 @UFS_LOCK(%struct.ufsmount* %16)
  %18 = load %struct.ufsmount*, %struct.ufsmount** %12, align 8
  %19 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NULLVP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %5
  %28 = load %struct.ufsmount*, %struct.ufsmount** %12, align 8
  %29 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @QTF_CLOSING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27, %5
  %39 = load %struct.ufsmount*, %struct.ufsmount** %12, align 8
  %40 = call i32 @UFS_UNLOCK(%struct.ufsmount* %39)
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %6, align 4
  br label %60

42:                                               ; preds = %27
  %43 = load %struct.ufsmount*, %struct.ufsmount** %12, align 8
  %44 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @QTF_64BIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 64, i32* %13, align 4
  br label %55

54:                                               ; preds = %42
  store i32 32, i32* %13, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load %struct.ufsmount*, %struct.ufsmount** %12, align 8
  %57 = call i32 @UFS_UNLOCK(%struct.ufsmount* %56)
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @copyout(i32* %13, i8* %58, i32 4)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %38
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.ufsmount* @VFSTOUFS(%struct.mount*) #1

declare dso_local i32 @UFS_LOCK(%struct.ufsmount*) #1

declare dso_local i32 @UFS_UNLOCK(%struct.ufsmount*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
