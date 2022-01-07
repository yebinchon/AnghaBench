; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_quotaoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_quotaoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.ufsmount = type { i32* }

@PRIV_UFS_QUOTAOFF = common dso_local global i32 0, align 4
@QTF_OPENING = common dso_local global i32 0, align 4
@QTF_CLOSING = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quotaoff(%struct.thread* %0, %struct.mount* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ufsmount*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.mount* %1, %struct.mount** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = load i32, i32* @PRIV_UFS_QUOTAOFF, align 4
  %12 = call i32 @priv_check(%struct.thread* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load %struct.mount*, %struct.mount** %6, align 8
  %19 = call %struct.ufsmount* @VFSTOUFS(%struct.mount* %18)
  store %struct.ufsmount* %19, %struct.ufsmount** %8, align 8
  %20 = load %struct.ufsmount*, %struct.ufsmount** %8, align 8
  %21 = call i32 @UFS_LOCK(%struct.ufsmount* %20)
  %22 = load %struct.ufsmount*, %struct.ufsmount** %8, align 8
  %23 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @QTF_OPENING, align 4
  %30 = load i32, i32* @QTF_CLOSING, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %17
  %35 = load %struct.ufsmount*, %struct.ufsmount** %8, align 8
  %36 = call i32 @UFS_UNLOCK(%struct.ufsmount* %35)
  %37 = load i32, i32* @EALREADY, align 4
  store i32 %37, i32* %4, align 4
  br label %54

38:                                               ; preds = %17
  %39 = load i32, i32* @QTF_CLOSING, align 4
  %40 = load %struct.ufsmount*, %struct.ufsmount** %8, align 8
  %41 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %39
  store i32 %47, i32* %45, align 4
  %48 = load %struct.ufsmount*, %struct.ufsmount** %8, align 8
  %49 = call i32 @UFS_UNLOCK(%struct.ufsmount* %48)
  %50 = load %struct.thread*, %struct.thread** %5, align 8
  %51 = load %struct.mount*, %struct.mount** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @quotaoff_inchange(%struct.thread* %50, %struct.mount* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %38, %34, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local %struct.ufsmount* @VFSTOUFS(%struct.mount*) #1

declare dso_local i32 @UFS_LOCK(%struct.ufsmount*) #1

declare dso_local i32 @UFS_UNLOCK(%struct.ufsmount*) #1

declare dso_local i32 @quotaoff_inchange(%struct.thread*, %struct.mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
