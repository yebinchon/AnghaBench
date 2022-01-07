; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_quotaoff_inchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_quotaoff_inchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.ufsmount = type { i64*, i32* }

@QTF_CLOSING = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@MNT_QUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quotaoff_inchange(%struct.thread* %0, %struct.mount* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ufsmount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = load %struct.mount*, %struct.mount** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @quotaoff_inchange1(%struct.thread* %10, %struct.mount* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mount*, %struct.mount** %5, align 8
  %15 = call %struct.ufsmount* @VFSTOUFS(%struct.mount* %14)
  store %struct.ufsmount* %15, %struct.ufsmount** %7, align 8
  %16 = load %struct.ufsmount*, %struct.ufsmount** %7, align 8
  %17 = call i32 @UFS_LOCK(%struct.ufsmount* %16)
  %18 = load i32, i32* @QTF_CLOSING, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.ufsmount*, %struct.ufsmount** %7, align 8
  %21 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %19
  store i32 %27, i32* %25, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %44, %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MAXQUOTAS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.ufsmount*, %struct.ufsmount** %7, align 8
  %34 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NULLVP, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %47

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %28

47:                                               ; preds = %42, %28
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @MAXQUOTAS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.mount*, %struct.mount** %5, align 8
  %53 = call i32 @MNT_ILOCK(%struct.mount* %52)
  %54 = load i32, i32* @MNT_QUOTA, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.mount*, %struct.mount** %5, align 8
  %57 = getelementptr inbounds %struct.mount, %struct.mount* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.mount*, %struct.mount** %5, align 8
  %61 = call i32 @MNT_IUNLOCK(%struct.mount* %60)
  br label %62

62:                                               ; preds = %51, %47
  %63 = load %struct.ufsmount*, %struct.ufsmount** %7, align 8
  %64 = call i32 @UFS_UNLOCK(%struct.ufsmount* %63)
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @quotaoff_inchange1(%struct.thread*, %struct.mount*, i32) #1

declare dso_local %struct.ufsmount* @VFSTOUFS(%struct.mount*) #1

declare dso_local i32 @UFS_LOCK(%struct.ufsmount*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @UFS_UNLOCK(%struct.ufsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
